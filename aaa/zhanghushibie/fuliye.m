function a=fuliye(x)
% Fs=1;%采样频率

% N=length(x);%采样点数
% t=[1:N];%采样时刻
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

