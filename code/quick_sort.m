%% ¿ìËÙ
load 'x.mat';
n=length(x);
draw(x);
x=quick_sort_core(x,1,n);

function x=quick_sort_core(x,low,high)
if low<high
    [x,key]=get(x,low,high);
    x=quick_sort_core(x,low,key-1);
    x=quick_sort_core(x,key+1,high);
end
end

function [x,index]=get(x,i,j)
key=x(i);
while i<j
    while i<j && x(j)>=key
        j=j-1;
    end
    
    if i<j
        x(i)=x(j);
    end
    
    while i<j && x(i)<=key
        i=i+1;
    end
    
    if i<j
        x(j)=x(i);  
    end
    draw(x);
    
end
x(i)=key;
draw(x);
index=i;
end