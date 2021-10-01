%% ²åÈë
load 'x.mat';
n=length(x);
draw(x);
for j=2:n
    key = x(j);
    i = j-1;
    while i>0 && x(i)>key
        x(i+1) = x(i);
        draw(x);
        i = i-1;
    end
    x(i+1) = key;
    draw(x);
end