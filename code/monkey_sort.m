%% ºï×Ó
load 'x3.mat';
n=length(x);
draw(x);

while(1)
    x = randperm(n);
    draw(x);
    flag=1;
    for i=1:n-1
        if x(i+1)<x(i)
            flag=0;
            break
        end
    end
    if flag==1
        break;
    end
end