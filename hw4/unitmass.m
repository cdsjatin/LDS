
y = [1
    0];
A = [1/2 3/2 5/2 7/2 9/2 11/2 13/2 15/2 17/2 19/2
    1 1 1 1 1 1 1 1 1 1];

    x = pinv(A)*y;
    newy = A*x
   stairs(x)
  