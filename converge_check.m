function ans = converge_check(a,b,c,n)
L = zeros(n);
D = zeros(n);   
U = zeros(n);
i = 1;
while i <= n
    j = 1;
    while j <= n
        if i-1 == j
            L(i,j) = a;
        elseif i == j
            D(i,j) = b;
        elseif i+1 == j
            U(i, j) = c;
        end
        j = j+1;
    end
    i = i+1;
end
jacobi_converge = norm(-D\(L+U),2)
gs_converge = norm(-(D+L)\U,2)
w = 0
while w < 2
    sor_converge = norm((D+w*L)\((1-w)*D-w*U),2)
    w = w+.1
end
end