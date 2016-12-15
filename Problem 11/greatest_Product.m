function highprod = greatest_Product(nvec,numadj)
numdig = length(nvec);
highprod =cell(1,2);
highprod{1} = 0;
highprod{2} = [];
for i = 1:1:numadj-1       
    for k = i:numadj:numdig
        if k+numadj-1 > numdig
            break
        else
            tempprod = 1;
            for g = 0:1:numadj-1
                if nvec(k+g) == 0
                    break
                else
                tempprod = nvec(k+g) *tempprod;
                end
            end
            if tempprod > highprod{1}
                highprod{1} = tempprod;
                highprod{2} = nvec(k:k+numadj-1);
            end
        end
    end
end

end