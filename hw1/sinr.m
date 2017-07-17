function S = sinr(G,p,sigma)

    Gnew = G-diag(diag(G));
    sig = ones(size(G,1),1)*sigma;
    
    Q = sig + Gnew*p;

    S = diag(G).*p;
    
    S = S./Q;
    
end