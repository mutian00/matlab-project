function A = p_swap(M,i)
t = size(M);
n = t(1);
b = M(i:n,i:n);
s = max(M(i:n,i:n));
top=i;
while i <= n
    if M(i,top) == s(1)
        M([i top],:) = M([top i],:);
        break
    end
    i = i+1;
end
A = M;
end