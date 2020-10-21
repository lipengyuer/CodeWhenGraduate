function [T1 T2 T3 best] = fitit(lujing_data_mat)
struct = load(lujing_data_mat);
data = struct.data;
x = data(1,:);
y = data(2,:);
y_ln = log(y);
T0 = [0.1*rand 0.1*rand 0.2*rand];%���ȡ�����ĳ�ֵ
%%%%%����1%%%%%
hanshu1_ln = @(T1,x)log(T1(1))+T1(2)/(x+T1(3));
[T1] = lsqcurvefit(hanshu1_ln,T0,x',y_ln);
y1 = exp(hanshu1_ln(T1,x'));
RN1=sum((exp(hanshu1_ln(T1,x'))-y).^2);
%%%%%����1����%%%%%

%%%%%����2%%%%%

hanshu2_ln = @(T2,x)log(T2(1)+x)-log(T2(2)*x+T2(3));
[T2] = lsqcurvefit(hanshu2_ln,T0,x,y_ln);
y2 = exp(hanshu2_ln(T2,x));
RN2=sum((exp(hanshu2_ln(T2,x))-y).^2);
% T2(1) = exp(T2_ln(1));
% T2(2) = 
%%%%%����2����%%%%%

%%%%%����3%%%%%
hanshu3_ln = @(T3,x)log(T3(1))+T3(3)*log(x+T3(2));
[T3] = lsqcurvefit(hanshu3_ln,T0,x,y_ln);%��ͬ��ʽ�ĺ�������[1:10]��õĽ���������л���һ��
y3 = exp(hanshu3_ln(T3,x));
RN3 = sum((exp(hanshu3_ln(T3,x))-y).^2);
%%%%%����3����%%%%%

%%%%%�в�ƽ������С�ĺ��������%%%%%
RN = [RN1 RN2 RN3];
best = 0;%��ʼ�����ʺϺ��������
for m = 1:3
    if(RN(m)==min([RN1 RN2 RN3]))
        best = m;
    end
end
plot(x,y,'m');hold on,plot(x,y1,'r');hold on,plot(x,y2,'g');hold on,plot(x,y3,'k');
end
