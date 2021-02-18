clear all ;
clear ;
clc ;

Dataset = readtable('dataset.xls' , 'ReadRowNames',false , 'ReadVariableNames' , false);

Euclidean = FuncEuclidean(Dataset);
 
Mahalanobis = FuncMahalanobis(Dataset) ;
 
Correlation = FuncCorrelation(Dataset);
 
Cossine = FuncCosine(Dataset);

Entropy = FuncEntropy(Dataset);