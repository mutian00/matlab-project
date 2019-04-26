function ans = partial_pivot(a,b,c,n)
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
i = 1;
j = 1;
ans = ones(n,1);
tic
while j <= n
    M = p_swap(M,j);
    next = i+1;
    while next <= n
        multiple = M (next, j)/M(i,j);
        M(next,:) = M(next,:) - M(i,:)*multiple;
        ans(next,1) = ans(next,1) - ans(i,1)*multiple;
        next = next + 1;
    end
    i = i+1;
    j = j+1;
end
a = n;
while a > 0
    ans(a,1) = ans (a,1)/M(a,a);
    M(a,:) = M (a,:)/M(a,a);
    prev = a-1;
    while prev>0
        ans(prev,1) = ans(prev,1) - ans(a,1)*M(prev,a);
        M(prev,:) = M(prev,:) - M(a,:)*M(prev,a);
        prev = prev -1;
    end
    a = a-1;
end
toc
end