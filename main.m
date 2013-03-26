% Example for k = 3 (3 points, 2d) 

H_f = [1/sqrt(3)  1/sqrt(3)  1/sqrt(3); 
       -1/sqrt(2) 1/sqrt(2)  0; 
       -1/sqrt(6) -1/sqrt(6) 2/sqrt(6)];
   
H = H_f(2:3,:);

% define X

x1 = [1;
      0];
x2 = [3;
      4];
x3 = [6; 
      -1];
  
X = [x1';x2';x3'];

X_h = H*X

C = H' * H 

C_x  = C * X

plot(X(:,1),X(:,2),'.')
figure;
plot(C_x(:,1),C_x(:,2),'.')


