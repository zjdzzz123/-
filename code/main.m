%% 生成数据
clc,clear all;
n = 6;
x = randperm(n);
stem(x);
save 'x3.mat' x;