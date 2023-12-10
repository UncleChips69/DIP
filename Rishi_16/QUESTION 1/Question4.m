% Define a variable
a = 10;

% If-Else Flow Control
fprintf('if else Flow control\n');
if a > 15
 fprintf('a is greater than 15\n');
elseif a == 10
 fprintf('a is equal to 10\n');
else
 fprintf('a is less than 15\n');
end
fprintf('For loop example - 1\n');

% For Loop
for i = 1:10
 fprintf('Value of i: %d\n', i);
end

fprintf('For loop example - 2\n');
% For Loop
for i = 1:10
 fprintf('Value of i: %d\n', i*10);
end
fprintf('While loop example \n');
% While Loop
count = 0;
while count < 5
 fprintf('Count is: %d\n', count);
 count = count + 1;
end

