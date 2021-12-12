A = [1;2;3;4] % This is a vector (read top/down) 4x1
B = [1,2;3,4] % This is a 2x2 Matrix. 1,2 first row, 3,4 second row
C = [4 3 5 2] % Spaces are allowed too instead of commas
D = [1 2 3;4 5 6;7 8 9]

assert(B(2,1), 3) % Access to a value in a matrix using its location row 2, column 1

% Access to every single element of row 2
% It's an horizontal matrix because we are showing a row
assert(B(2,:), [3, 4]) 

% Access to every single element of column 2
% It's vertical (column)
assert(B(:,2), [2; 4]) 

% Here we take whole rows 1 and 3 
assert(D([1,3],:), [1,2,3;7,8,9])

% Put all elements of D in a single vector
D_V = D(:)
assert(size(D_V), [9,1,]) % D_V becomes a vector (from 3x3 to 9x1)

% Append column
D= [D, [5;7;2]]

% Append matrix

D1=[D,D] % Append horizontally
D2=[D;D] % Append vertically

% We can reassign part of the matrix with the same sintax
% Here we are reassigning the second column
D(:,2) = [11;12;13]

V1 = [4:7] % From 4 to 7 => [4,5,6,7]
V2 = [1:0.1:2] % From 1 to 2 with steps of 0.1 => [1, 1.1 , 1.2, ... 2]

M1 = ones(4,5) % 4x5 Matrix filled with 1
M2 = zeros(4,5) % 4x5 Matrix filled with 0
M3 = 2* ones(2,2) % Multiplies every element to a scalar [2,2;2,2]
M4 = rand(4,5) % 4x5 Matrix fillet with random value between 0 and 1 using normal distribution
M5 = eye(6) % This is an Identity matrix 6x6


M6 = -6 * sqrt(10)*(randn (1,10000));
% hist(M5,50)

% size returns the size of the given object
% Size of M1 => [4,5]
assert(size(M1), [4,5])
assert(size(M1,1), 4) % Numbers of rows (Like Numpy...)
assert(size(M1,2), 5) % Numbers of columns


A' % Transposed Matrix

1 == 1;  % Boolean equal 0 is false, 1 is true, like in C-like 
1 ~= 0; % Boolean NOT equal
1 && 0; % Logical AND
1 || 0; % Logical OR
xor(1,0); % Logical XOR

something = 5 ; % Semicolon suppresses the output on console

%Saving variables to file. A file called 'xyz.dat' is created with the content of M6 variable
save xyz.dat M6;


% Load data from file called xyz.dat and put it into a variable called M6 specified when saving
% if not specified current folder is used
load xyz.dat

% Shows all the variables we currently have on our workspace
who

% Shows all the variables with additional information
whos