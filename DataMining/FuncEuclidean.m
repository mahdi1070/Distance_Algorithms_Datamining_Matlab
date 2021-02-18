function EuclideanDistance = FuncEuclidean(Ab)
A = table2array(Ab);
[row , col] = size(A);
EuclideanDistance = zeros(row) ;
for i = 1 : row
    for k = 1 : row
        sum = 0 ;
        for j = 1 : col
            m = A(k,j) - A(i,j) ;
            sum = sum + m^2 ;
        end
        EuclideanDistance(i,k) = FindSqrt(sum) ;
    end
end
end

