function l = largestPalinNum(n)
%%this function will output the largest palindrome number found by
%%multiplying 2 n digit numbers

%n is the amount of digits of multiplying numbers to consider.

max = 10^n - 1; %will generate the largest n digit number
list = [];
lnum = 1;
for i = 1:1:max
    for j = 1:1:max
        temp = i*j;
        if isPalinNum(temp) == 1
            list(lnum) = temp;
            lnum = lnum+1;
        end
    end
end
list = sort(list);

l = list(end);
end