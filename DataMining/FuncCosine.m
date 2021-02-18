function Cossine = FuncCosine(Ab)
A = table2array(Ab);
[~ , col] = size(A);
Cossine = zeros(col) ;

for i = 1 : col
    for j = 1 : col
      % s = sum(A(:,i).*A(:,j));
       s = SumArray(A(:,i).*A(:,j));
      % a = sum(A(:,i).^2);
       a = SumArray(A(:,i).^2);
      % b = sum(A(:,j).^2);
       b = SumArray(A(:,j).^2);
       a1 = FindSqrt(a);
       b1 = FindSqrt(b);
       Cossine(i,j) = s/(a1*b1);

    end
end
end



