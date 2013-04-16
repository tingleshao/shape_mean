% main program, for testing purpose
% Chong Shao (cshao@cs.unc.edu)
% UNC-CH

% 1) Helmert submatrix expeirment 
% --Example for k = 3 (3 points, 2d) 
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

X_h = H*X;

C = H' * H; 

C_x  = C * X;
% % testing code
% plot(X(:,1),X(:,2),'.')
% figure;
% plot(C_x(:,1),C_x(:,2),'.')
%

% 2) test the extrinsic mean discrete version calculation via VW embedding 
% test data: 2 ellipsoids X(t) = r1 cost, Y(t) = r2 sint
elip1 = zeros(10,1);
elip2 = zeros(10,1);

r1 = 4;
r2 = 3;
r3 = 6;
r4 = 2;
for k = 1:11,
   t = pi * 2 / 10 * k;
   elip1(k) = r1 * cos(t) + 1i *  r2 * sin(t);
end
for k = 1:11,
   t = pi * 2 / 10 * k;
   elip2(k) = r3 * cos(t) + 1i *  r4 * sin(t);
end
figure;
plot(elip1/norm(elip1),'b')

hold on;
plot(elip2/norm(elip2),'r')
data = [elip1, elip2];
mean = getMeanViaVWEmbedding(data)
mean = mean/ norm(mean)
plot(mean,'g')