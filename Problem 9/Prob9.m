%%The following script was used to solve problem 9
%%A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
%%a2 + b2 = c2
%%For example, 32 + 42 = 9 + 16 = 25 = 52.
%%There exists exactly one Pythagorean triplet for which a + b + c = 1000.
%%Find the product abc.%%
a = 1;
b = 1;
sol = [];
for a = 1:1:500
    for b = 1:1:500
        c = sqrt(a^2+b^2);
        if a + b + c == 1000
            sol = [a,b,c];
            break
        end
    end
    if isempty(sol) ~= 1
        break
    end
end
            
