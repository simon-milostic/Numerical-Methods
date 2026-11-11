A = load("marketcap.csv");
B = A(:,4:end);
C = sum(B, 2);

I = (repelem(0,1512))';
I_dol = (repelem(0,1512))';
I_gor = (repelem(0,1512))';
I_ro = (repelem(0,1512))';
r = (repelem(0,1511))';

for i = 2:1512

    I(1,1) = 1000;
    I_dol(1,1) = 1000;
    I_gor(1,1) = 1000;
    I_ro(1,1) = 1000;

    r(i-1,1) = C(i,1)/C(i-1,1);
    I(i,1) = r(i-1,1) * I(i-1,1);

    r_fl = floor(r.*10^3)./10^3;
    r_ceil = ceil(r.*10^3)./10^3;
    r_ro = round(r,3);

    I_dol(i,1) = r_fl(i-1,1) * I_dol(i-1,1);
    I_gor(i,1) = r_ceil(i-1,1) * I_gor(i-1,1);
    I_ro(i,1) = r_ro(i-1,1) * I_ro(i-1,1);

end

x = 1:1512;

hold on

plot(x, I(x,1))

plot(x, I_dol(x,1)) 

plot(x, I_gor(x,1)) 

plot(x, I_ro(x,1)) 

legend('True', 'Lower Bound', 'Upper Bound', 'Rounding');

hold off 


