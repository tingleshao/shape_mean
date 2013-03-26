function [ H_f, H ] = consH( k )
% given k. compute full Helmert matrix and Helmert sub matrix
H_f = zeros(k);
for i = 1:k
    H_f(1,i) = sqrt(1/k);
end
for i = 2:k
    for j = 1:i-1
           H_f(i,j) = -sqrt(1/((i-1) * i));
    end
    H_f(i,i) = (i-1) *  sqrt(1/((i-1) * i)) ;
end
H = H_f(2:k,:);
end


