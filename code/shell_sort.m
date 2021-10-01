%% Ï£¶û
load 'x.mat';
n=length(x);
draw(x);
gap=floor(n/2);
while gap>0
    i=gap;
    while i<n
        j=i;
        current = x(i+1);
        while j-gap>=0 && current<x(j-gap+1)
            x(j+1)=x(j-gap+1);
            draw(x);
            j=j-gap;
        end
        x(j+1)=current;
        draw(x);
        i=i+1;
    end
    gap=floor(gap/2);
end
    