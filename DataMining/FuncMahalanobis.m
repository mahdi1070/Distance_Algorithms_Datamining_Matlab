function Maha = FuncMahalanobis(Ab)
A = table2array(Ab);
[row , ~] = size(A);
Maha = zeros(row) ;
Cov = FuncCovariance(A);

for i = 1 : row
    for k = 1 : row
 %       m1 = transpose(A(i,:) - A(k,:));
        m1 = (A(i,:) - A(k,:))';
        m3 = A(i,:) - A(k,:) ;
%         Acov = inv(Cov);
%         Maha  = m1*Acov*m3 ;
        m4 = Cov\m1 ; 
        Maha(i,k)  = m3*m4 ;
    end
end
end