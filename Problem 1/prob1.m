n = 1000; %max number to consider
multiples =[];
mcount = 1;
for i = 1:n-1
    if mod(i,3) == 0 || mod(i,5) == 0
      multiples(mcount) = i;
      mcount = mcount+1;
    end
end

answ = sum(multiples);
disp(num2str(answ))