clc;
close all;
clear all;

n = 10000;
pick = ceil(3*rand(1,n));
sec_pick = ceil(2*rand(1,n));
true_doors = ceil(3*rand(1,n));
true_doors_2 = ceil(2*rand(1,n));
px = 1/3;
first = 0;
second = 0;

for i = 1 : n
    if pick(i) == true_doors(i)
        first = first + 1;
    end
    if true_doors_2(i) == sec_pick(i)
        second = second + 1;
    end
end

first/n
second/n
