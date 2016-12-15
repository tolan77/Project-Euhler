function p = nthprime(n)
%% used to solve By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
    %%What is the 10001st prime number?
    lprime = [];
    k = 1;                  %dummy variable to increase list size to consider for 
    while length(lprime) < n
        lprime = primes(n*exp(k));
        k = k+1;
    end
    p = lprime(10001);
end