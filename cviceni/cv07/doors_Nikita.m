clc;
close all;
clear all;

n_doors = 3;
n = 100000;
result = zeros(1,n);
for i = 1:n
    win_door = ceil(n_doors*rand);
    my_guess = ceil(n_doors*rand);
    open_door = ceil(n_doors*rand);
    while open_door == win_door || open_door == my_guess
        open_door = ceil(n_doors*rand);
    end
    if my_guess ~= win_door
        result(i) = 1;
    end
end

100*sum(result)/length(result)