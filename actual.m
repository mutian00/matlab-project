function ans = actual(a,b,c,n)
M = zeros(n);
i = 1;
while i <= n
    j = 1;
    while j <= n
        if i-1 == j
            M(i,j) = a;
        elseif i == j
            M(i,j) = b;
        elseif i+1 == j
            M(i, j) = c;
        end
        j = j+1;
    end
    i = i+1;
end
tic
[L,U] = lu(M);
b = ones(n,1);
ans = U\(L\b);
toc
end