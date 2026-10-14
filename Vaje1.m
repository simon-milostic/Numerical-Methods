% Exercise 1:

A = [3, 2, 8, 1; 7, 2, 5, 6; 0, 7, 3, 5];

% Transpose:
A' 

% Extracting elements and vectors:
A(2,3)
A(:,[1,4])
A([2,3],[3,1])
A(:,1:2:end)
A(:)
[A; A(end,:)]

% Operations 
A+eye(3,4)
A-3
A(end:-1:1,:)
A.^2
exp(A)

% Misc:
fliplr(A)
diag(A)
diag(diag(A))
tril(A)
triu(A)
size(A)
max(A)
max(max(A))

%boolean:
A == 2
A ~= 2
A > 2


% Exercise 2:

A = [3, 1, 6; 5, 2, 7];
x = [1, 4, 8];
y = [2, 1, 5];

% Operations:
x + y
x + A
x' + y

% A - [x' y'] throws an error, we have 2 x 3 and 3 x 2 matrices, so we can
% do the following:
A - [x' y']'
A' - [x' y']

% [x; y'] is a matrix with the first row being a row vecor x, second row
% cannot be a column vector y', as it's a column

[x; y]


% Exercise 3:

A1 = ceil(10*rand(5));
A2 = floor(10*rand(3));

% Construct A3:
A3 = zeros(8, 8)
A3(1:5,1:5) = A1
A3(6:8,6:8) = A2

% Exercise 3.1:

b = A3(7,3)

% Exercise 3.2:

A3(3,5) = 7
A3(8,7) = A3(8,7) + 1

% Exercise 3.3:

A3(6:8,1:3) = eye(3,3)

% Exercise 3.4:

v2 = 1:8
v1 = 4:8
v2(4:6)=[]
B = A3(v1,v2)


% Exercise 4:

% Exercise 4.1:

f = @(x) exp(x).*sin(100*x)

% Exercise 4.2:

x = 0:0.00001:1;
y = f(x)
plot(x,y)

% Exercise 4.3:

g = @(x) exp(x).*cos(100*x)
plot(f(x),g(x))
