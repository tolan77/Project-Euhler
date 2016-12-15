function ssd = sumSqDiff(n)
%Find the difference between the sum of the squares of the first n natural numbers and the square of the sum of the first n natural numbers.

%%sum of the squares%%
ssq = 0;
for i = 1:n
    ssq = i^2 + ssq;
end

%square of the sums
sqs = 0;
for i = 1:n
    sqs = i + sqs;
end
sqs = sqs^2;


ssd = sqs - ssq;
end