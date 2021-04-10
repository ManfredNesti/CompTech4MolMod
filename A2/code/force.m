function F = force(grd, ptcls, grd_to_ptcl, r_cut, sigma, epsilon)
  Nparticelle = size(ptcls.x,2);
  F = zeros(2,Nparticelle);
  ForzeCoppie = zeros(2,Nparticelle,Nparticelle);

  M1 = size(grd_to_ptcl,1);
  M2 = size(grd_to_ptcl,2);
  Ncelle = M1*M2;

  f = @(r_modulo,r) -(24*epsilon*((1-2*((sigma./r_modulo).^6)).*((sigma./r_modulo).^6)./(r_modulo.^2))).*r;
  
  d = cellfun (@numel, grd_to_ptcl, 'UniformOutput', true);
  nonempty = find (d);

  r_cutQuadro = r_cut^2;
  for ic = nonempty(:)'
    if (ic > M1 + 1 && ic < Ncelle-M1-1)
      aux = [ic,ic+1,ic+M1-1,ic+M1,ic+M1+1];
      [s1,s2] = ind2sub ([grd.ncy, grd.ncx], aux);
      particelleVicineAux = diag(grd_to_ptcl(s1,s2));
      particelleVicine = horzcat(particelleVicineAux{1},particelleVicineAux{2},particelleVicineAux{3},particelleVicineAux{4},particelleVicineAux{5});
    elseif (ic == M1 + 1)
      aux = [ic,ic+1,ic+M1-1,ic+M1,ic+M1+1];
      [s1,s2] = ind2sub ([grd.ncy, grd.ncx], aux);
      particelleVicineAux = diag(grd_to_ptcl(s1,s2));
      particelleVicine = horzcat(particelleVicineAux{1},particelleVicineAux{2},particelleVicineAux{3},particelleVicineAux{4},particelleVicineAux{5});
    elseif (ic == 1)
      aux = [ic,ic+1,ic+M1-1,ic+M1,ic+M1+1];
      [s1,s2] = ind2sub ([grd.ncy, grd.ncx], aux);
      particelleVicineAux = diag(grd_to_ptcl(s1,s2));
      particelleVicine = horzcat(particelleVicineAux{1},particelleVicineAux{2},particelleVicineAux{3},particelleVicineAux{4},particelleVicineAux{5});
    elseif (ic == Ncelle-M1-1)
      aux = [ic,ic+1,ic+M1-1,ic+M1];
      [s1,s2] = ind2sub ([grd.ncy, grd.ncx], aux);
      particelleVicineAux = diag(grd_to_ptcl(s1,s2));
      particelleVicine = horzcat(particelleVicineAux{1},particelleVicineAux{2},particelleVicineAux{3},particelleVicineAux{4});
    elseif (ic == Ncelle)
      aux = [ic];
      [s1,s2] = ind2sub ([grd.ncy, grd.ncx], aux);
      particelleVicineAux = diag(grd_to_ptcl(s1,s2));
      particelleVicine = particelleVicineAux{1};
    elseif (ic <= M1 +1)
      aux = [ic,ic+1,ic+M1-1,ic+M1,ic+M1+1];
      [s1,s2] = ind2sub ([grd.ncy, grd.ncx], aux);
      particelleVicineAux = diag(grd_to_ptcl(s1,s2));
      particelleVicine = horzcat(particelleVicineAux{1},particelleVicineAux{2},particelleVicineAux{3},particelleVicineAux{4},particelleVicineAux{5});
    else
      aux = [ic,ic+1];
      [s1,s2] = ind2sub ([grd.ncy, grd.ncx], aux);
      particelleVicineAux = diag(grd_to_ptcl(s1,s2));
      particelleVicine = horzcat(particelleVicineAux{1},particelleVicineAux{2});
    end


    NparticelleVicine = numel(particelleVicine);
    
    UNI = ones(1,NparticelleVicine);
    A1 = (ptcls.x(1,particelleVicine)')*UNI;
    A2 = (ptcls.x(2,particelleVicine)')*UNI;
    Z_matrix_squared = (A1 - A1').^2 + (A2 - A2').^2;

    
    [s1,s2] = ind2sub([NparticelleVicine,NparticelleVicine],find(Z_matrix_squared <= r_cutQuadro & Z_matrix_squared != 0));
    
    S = [particelleVicine(s1)',particelleVicine(s2)'];

    if isempty(S)
      continue
    end
    
    aux = find(abs(ForzeCoppie(1,sub2ind([Nparticelle, Nparticelle],S(:,1),S(:,2)))) + ...
	       abs(ForzeCoppie(2,sub2ind([Nparticelle, Nparticelle],S(:,1),S(:,2)))) == 0);
    S = S(aux,:);
    r = ptcls.x(:,S(:,1)) - ptcls.x(:,S(:,2));
    r_modulo = norm(r,2,"cols");
    ForzeCoppie(:,sub2ind([Nparticelle, Nparticelle],S(:,1),S(:,2))) = f(r_modulo,r);
  end

  F = sum(ForzeCoppie,3);
end