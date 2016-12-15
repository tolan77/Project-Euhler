function evensum = fibonacci_even_sum(n)
format long
if ~isnumeric(n)
        error('fibonacci_iterative:numeric','Argument must be numeric')
    elseif ~isscalar(n)
        error('fibonacci_iterative:scalar','Argument must be scalar')
    elseif n ~= floor(n)
        error('fibonacci_iterative:integer','Argument must be an integer')
    elseif n <= 0
        error('fibonacci_iterative:positive','Argument must be positive')
end
    
 if n == 1               %outputs first term of fibo sequence
        m = 1;
        s = [1];         %s will be the vector of the fibonacci sequence for chosen n
    elseif n == 2           %outputs second term of fibo sequence
        m = 2;
        s = [1,2];
    else                    %iteratively outputs all terms 3 or higher
        s = [1,2];
        fib = 1;            %fib is the  initial lower term n=1
        fi = 2;             %fi is the intial higher term n=2
        for i = 3:n
            tempfib = fib;  %temporary storage variables so as to change fib and fi both in this loop
            fib = fi;       %makes the higher term the next loops lower term
            fi = tempfib + fi;  %calculates the new higher term
            if fi > 4000000 %breaks the calculation when above 4000000
                break
            else
            s(i) = fi;
            end
        end
        m = fi;
 end
 
 ls = length(s);
 ev = [];
 numeves = 1;
 for i = 1:ls
     if mod(s(i),2) == 0
         ev(numeves) = s(i);
         numeves = numeves + 1;
     end
 end

evensum = sum(ev);