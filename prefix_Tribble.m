% Clear windows
clc
clear

% Get the two inputs
sen1 = input('Enter first sentence: ','s');
sen2 = input('Enter second sentence: ','s');

% Initialize a set to be the prefix output later
pre = [];

% Determine which sentence is longer for the purposes of the for loop
x = 0;

if length(sen1) >= length(sen2)
    x = length(sen1);
else
    x = length(sen2);
end

% Make sure there is a prefix
if strcmp(sen1(1),sen2(1)) ~= 1
    fprintf('\nNo common prefix.\n\n');
else

% Determine the prefix one word at a time
for i = 1:x
    if strcmp(sen1(i),sen2(i)) == 1
        pre = [pre sen1(i)];
    else
        break
    end
end

% Display the prefix
fprintf('\nCommon prefix of the two sentences: %s\n\n',pre);

end
