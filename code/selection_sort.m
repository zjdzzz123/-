%% Ñ¡Ôñ
load 'x.mat';
n=length(x);
draw(x);
for i=1:n
    minIndex = i;
    for j=i+1:n
        if x(j)<x(minIndex)
            minIndex = j;
        end
    end
        t = x(i);
        x(i)=x(minIndex);
        x(minIndex)=t;
        draw(x);
 end

        