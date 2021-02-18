function stDev = FindStd(list)
    [m , n] = size(list);
    stDev = zeros(1,n);
    for i = 1:n
        avg = Average(list(:,i)) ;
        sum = 0 ;
        for j = 1:m
            sum = sum + ((list(j,i)-avg)^2);
        end
        var = sum / (m-1) ;
        
        stDev(1,i) = FindSqrt(var) ;
    end
end