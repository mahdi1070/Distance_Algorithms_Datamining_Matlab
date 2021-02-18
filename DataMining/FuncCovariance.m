function Cov = FuncCovariance(A)

[row , col] = size(A);
Cov = zeros(col) ;

for i = 1 : col    
    for j = 1 : col
        %av1 = mean(A(:,i)) ;
        av1 = Average(A(:,i)) ; 
        %av2 = mean(A(:,j)) ;
        av2 = Average(A(:,j)) ; 
        s = 0 ;
         for k = 1 : row
            m = (A(k,i) - av1)*(A(k,j) - av2);
            s = s + m;
         end
        Cov(i,j) = s / (row-1);
    end
end
end