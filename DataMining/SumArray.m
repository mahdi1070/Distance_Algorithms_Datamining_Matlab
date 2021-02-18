function s = SumArray(list)
    [m , n ] = size(list);
    s = zeros(1,n);
    for i = 1:n
        sum = 0 ;
        for j = 1:m
            sum = sum + list(j,i);
        end
        
        s(1,i) = sum ;
    end
end