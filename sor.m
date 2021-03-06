function [ans,itr] = sor(a,b,c,n,w)
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
i = 0;
ans = zeros(n,1); % This is vertical array with initial guess at x0 = 0.
b = ones(n,1);
stop=1;
itr = 0;
while stop > 1e-10
    if itr > 1000
        break
    end
    prev = ans;
    ans = (D+w*L)\b + (D+w*L)\((1-w)*D-w*U)*ans;
    i = i + 1;
    stop = norm(prev-ans,2);
    itr = itr +1;
end
itr
end
