function s = smallestMultiple(n)
%what is the smallest number (s) that can be evenly divided by all the numbers from 1 to n?
l = n;
finished = 0;
num = 1;
while finished == 0
    for i = 2:l
        if rem(num,i) == 0
            finished = 1;
        else
            finished = 0;
            break
        end
    end
    if finished == 1
        break
    else
        num = num+1;
    end
end
s = num;

end

        
