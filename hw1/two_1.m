gamma = 4;
alpha = 1.2;
sigma = 0.01;

G = [1 0.2 0.1
    0.1 2 0.1
    0.3 0.1 3];

g = diag(diag(G));
gg = diag(G)*(ones(1,size(G,1)));

A = ((G-g)./gg)*(alpha*gamma);

clear gg;
clear g;

b = ones(size(A,1),1)*(alpha*gamma*sigma);

recib = 1./diag(G);

b = b.*recib;

clear recib;
clear o;

p(:,1) = rand(3,1);

figure;
plot(ones(20,1)*alpha*gamma);
hold on;
for t = 1:20
    
    S(:,t) = sinr(G,p(:,t),sigma);
    p(:,t+1) = A*p(:,t) + b;

    plot(S(3,1:t),'r')
    plot(p(3,1:t),'b')
    hold on;
    pause(0.1)
    grid on;
    
end    
  





