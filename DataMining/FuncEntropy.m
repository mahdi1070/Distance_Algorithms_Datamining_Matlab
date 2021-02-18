function Ent = FuncEntropy(Ab)
A = table2array(Ab);
[row , col] = size(A);

for i = 1 : col
    a = unique(A(:,i));
    fre = [a,histc(A(:,i),a)];
    % [N] = histcounts(A(:,i));
    [r , ~] = size(fre);

    for j = 1 : r
        fre(j,3) = (fre(j,2)/row);
        fre(j,4) = log2(fre(j,3));
        fre(j,5) = fre(j,3)*fre(j,4);
    end
        Ent(1,i) = (-1)*SumArray(fre(:,5));
end

end



