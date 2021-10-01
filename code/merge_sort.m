%% �鲢
load 'x.mat';
n=length(x);
draw(x);
r=zeros(1,n);
x=merge_sort_core(x);

function dataSrc = mergeSub(dataSrc, left1, right1, left2, right2)
dataSrcLength = length(dataSrc);
tempData = zeros(1, right2 - left1 + 1);
i = left1;
j = left2;
tempIndex = 1;
%�������ݺϲ�
while(1)
    if dataSrc(i) <= dataSrc(j)
        tempData(tempIndex) = dataSrc(i);
        i = i+1;
        tempIndex = tempIndex + 1;
        draw(dataSrc);
    else
        tempData(tempIndex) = dataSrc(j);
        j = j + 1;
        tempIndex = tempIndex + 1;
        draw(dataSrc);
    end
    if i > right1 || i > dataSrcLength
        break;
    end
    if j > right2 || j > dataSrcLength
        break;
    end
end
    %�鿴��������Ƿ���ʣ��
    while(i <= right1 && i <= dataSrcLength)
        tempData(tempIndex) = dataSrc(i);
        i = i + 1;
        tempIndex = tempIndex + 1;
        draw(dataSrc);
    end
    %�鿴�ұ������Ƿ���ʣ��
    while(j <= right2 && j <= dataSrcLength)
        tempData(tempIndex) = dataSrc(j);
        j = j + 1;
        tempIndex = tempIndex + 1;
        draw(dataSrc);
    end
    %�����ݷŻ���ԭʼ������
    j = 1;
    for i = left1: min(right2,length(dataSrc))
        dataSrc(i) = tempData(j);
        draw(dataSrc);
        j = j + 1;
        if j > right2 - left1 + 1
            break;
        end
        if j > dataSrcLength
            break;
        end
    end
end



function srcData = merge_sort_core(srcData)
dataSrcLength = length(srcData); %���ݳ���
lengthStep = 1; %��ʼ�����򳤶�
while(1)   
%�ֲ�����
srcData = merge2Sub(srcData, lengthStep);    
if lengthStep * 2 > dataSrcLength
    break;
end
lengthStep = lengthStep*2;
end
end

function dataSrc = merge2Sub(dataSrc, lengthStep)
dataSrcLength = length(dataSrc);
startIndex = 1;
startIndexEnd = startIndex + lengthStep - 1;
start2Index = startIndex + lengthStep;
start2IndexEnd = start2Index + lengthStep - 1;
%�ϲ�ָ�����ȵ����ݿ�
while(1)
    dataSrc = mergeSub(dataSrc, startIndex, startIndexEnd, start2Index, start2IndexEnd);       
    startIndex = start2Index + lengthStep;
    startIndexEnd = startIndex + lengthStep - 1;
    start2Index = startIndex + lengthStep;
    start2IndexEnd = start2Index + lengthStep - 1;       
    if startIndex > dataSrcLength || start2Index > dataSrcLength
        break;
    end
end
end   