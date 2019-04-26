% to find the error between the two, we take the actual answer computed
% form matlab and find the norm like such.

% errors for gaussian a=b=1, c=4
error_g1 = norm(gaussian(1,4,1,10)-actual(1,4,1,10),2)
error_g2 = norm(gaussian(1,4,1,100)-actual(1,4,1,100),2)
error_g3 = norm(gaussian(1,4,1,1000)-actual(1,4,1,1000),2)

% errors for partial pivot a=b=1, c=4
error_p1 = norm(partial_pivot(1,4,1,10)-actual(1,4,1,10),2)
error_p2 = norm(partial_pivot(1,4,1,100)-actual(1,4,1,100),2)
error_p3 = norm(partial_pivot(1,4,1,1000)-actual(1,4,1,1000),2)

% errors for scaled partial pivot a=b=1, c=4
error_s1 = norm(scaled_partial(1,4,1,10)-actual(1,4,1,10),2)
error_s2 = norm(scaled_partial(1,4,1,100)-actual(1,4,1,100),2)
error_s3 = norm(scaled_partial(1,4,1,1000)-actual(1,4,1,1000),2)



% errors for gaussian a=b=c=1
error_g11 = norm(gaussian(1,1,1,10)-actual(1,1,1,10),2)
error_g21 = norm(gaussian(1,1,1,100)-actual(1,1,1,100),2)
error_g31 = norm(gaussian(1,1,1,1000)-actual(1,1,1,1000),2)

% errors for partial pivot a=b=1, c=4
error_p11 = norm(partial_pivot(1,1,1,10)-actual(1,1,1,10),2)
error_p21 = norm(partial_pivot(1,1,1,100)-actual(1,1,1,100),2)
error_p31 = norm(partial_pivot(1,1,1,1000)-actual(1,1,1,1000),2)

% errors for scaled partial pivot a=b=1, c=4
error_s11 = norm(scaled_partial(1,1,1,10)-actual(1,1,1,10),2)
error_s21 = norm(scaled_partial(1,1,1,100)-actual(1,1,1,100),2)
error_s31 = norm(scaled_partial(1,1,1,1000)-actual(1,1,1,1000),2)
