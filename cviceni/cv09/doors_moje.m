clear all
clc

n_doors = 3;

prvni = 0;
druhy = 0;

epochs = 100;
for e=1:epochs
dvere = 1:n_doors;
poklad = ceil(n_doors*rand(1));
tip1 = ceil(n_doors*rand(1));

dvere(dvere==poklad) = [];
dvere(dvere==tip1) = [];
moderator = dvere(randsample(length(dvere),1));

tip2 = 1:n_doors;
tip2(tip2==tip1) = [];
tip2(tip2==moderator) = [];
if tip1 == poklad
prvni = prvni + 1;
elseif tip2 == poklad
druhy = druhy + 1;
end
end

prvni / epochs * 100
druhy / epochs * 100