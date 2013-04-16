function [ mean ] = getMeanViaVWEmbedding( vectors )
% computes extrinsic mean via VW embedding
n = size(vectors,2);
dim = size(vectors,1);
emb = zeros(dim);
for j = 1:n,
    emb = emb + vectors(:,j) * vectors(:,j)';
end

[v,d] = eig(emb);
d
mean = v(:,11);

end

