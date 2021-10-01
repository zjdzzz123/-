%% Ã°Åİ
load 'x2.mat';
n=length(x);
draw(x);
for i=1:n
    for j=1:n-i
        if x(j)>x(j+1)
            t = x(j);
            x(j) = x(j+1);
            x(j+1) = t;
        end
        draw(x);
    end
end
