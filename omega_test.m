w = .1; %can have different to be more precise
while w <2
    a = sor(1,4,1,100,w); %just sawp this for n = 100 or 1000 for those cases.
    a = a(2)
    w = w + .1;
end


%{
for n = 100 and n = 1000
w = .1;
while w <2
    a = sor(1,4,1,100,w);
    a = a(2)
    w = w + .1;
end

w = .1;
while w <2
    a = sor(1,4,1,1000,w);
    a = a(2)
    w = w + .1;
end
%}

%{
for more precision, explained in report
w = 1.01;
while w <1.1
    a = sor(1,4,1,10,w);
    a = a(2)
    w = w + .01;
end
%}
