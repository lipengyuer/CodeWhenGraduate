function a=fuliye(x)
% Fs=1;%����Ƶ��

% N=length(x);%��������
% t=[1:N];%����ʱ��
a=[];
for m=1:length(x)
    a(m,:)=fft(x(m,1:144));
end
a=real(a);
% Ax=abs(X);
% Ax=Ax/(N/2);
% F=([1:N]-1)*Fs/N;
% plot(F,Ax);
end

