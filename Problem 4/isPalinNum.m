function y = isPalinNum(n)
s = num2str(n);
ls = length(s);
if mod(ls,2) == 0   %even digit amount numbers
    e = '';
    for i = 0:(ls/2)-1
        e(i+1) = s(ls - i);
        e(ls - i) = s(i + 1);
    end
    if strcmp(e,s) == 1
        y = 1;
    else
        y = 0;
    end


else
    o = '';
    for i = 0:floor(ls/2)
        o(i+1) = s(ls - i);
        o(ls - i) = s(i + 1);
    end
    o(floor(ls/2)+1) = s(floor(ls/2)+1);
    if strcmp(o,s) == 1
        y = 1;
    else
        y = 0;
    end
end
end