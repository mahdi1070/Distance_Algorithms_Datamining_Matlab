function avg = Average(list)
    [m , n ] = size(list);
    avg = zeros(1,n);
    for i = 1:n
        sum = 0 ;
        for j = 1:m
            sum = sum + list(j,i);
        end
        
        avg(1,i) = sum / m ;
    end
end