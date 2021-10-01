%% ¶Ñ
load 'x.mat';
n=length(x);
draw(x,0);
x=heap_sort_core(x,n);

function x=heap_sort_core(x,n)
for i=floor(n/2)-1:-1:0
    x=HeapAdjust(x,i,n);
end
for i=n-1:-1:0
    t=x(i+1);
    x(i+1)=x(1);
    x(1)=t;
    cnt=cnt+1;
    draw(x,cnt);
    x=HeapAdjust(x,0,i);
end
end

function x=HeapAdjust(x,i,n)
max=i;
lchild=i*2+1;
rchild=i*2+2;
if lchild<n && x(lchild+1)>x(max+1)
    max=lchild;
end
if rchild<n && x(rchild+1)>x(max+1)
    max=rchild;
end

if max ~= i
    t=x(i+1);
    x(i+1)=x(max+1);
    x(max+1)=t;
    cnt=cnt+1;
    draw(x,cnt);
    x=HeapAdjust(x,max,n);
end
end