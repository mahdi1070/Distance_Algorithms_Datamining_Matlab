function Corr = FuncCorrelation(Ab)
A = table2array(Ab);
[~ , col] = size(A);
Corr = zeros(col) ;
Cov = FuncCovariance(A);

for i = 1 : col
    for j = 1 : col
%         av1 = mean(A(:,i)) ;
%         em1 = std(A(:,i));
%         av1 = Average(A(:,i)) ;
        em1 = FindStd(A(:,i));
%         av2 = mean(A(:,j)) ;
%         em2 = std(A(:,j));
%         av2 = Average(A(:,j)) ;
        em2 = FindStd(A(:,j));
        Corr(i,j) = Cov(i,j)/(em1*em2) ;
    end
end
end

