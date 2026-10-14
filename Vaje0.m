a = 5;
if a > 6
    a = a+1;
else
    a = a-1;
end

a;
f = @(x) sin(x);

%seznam abcis
x = -100:0.001:100;

%seznam ordinat
y = f(x);
plot(x, y);
xlabel('x');
ylabel('f(x)');
grid on;
scatter(x,y)



