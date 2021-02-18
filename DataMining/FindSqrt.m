function sqr = FindSqrt(number)
  
    sqr = number / 2;
    temp = 0;
    while(sqr ~= temp)
        temp = sqr;
        sqr = ( number/temp + temp) / 2;
    end
end