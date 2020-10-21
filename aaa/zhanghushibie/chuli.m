function [alldata l]=chuli%[cc1 cc2 dd ee hh ii jj kk ll mm nn totalretweet  notrealtext realtext  wuyiyizhuanfabi  rptcnt_  cmtcnt_]=chuli
s1='C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\auserzhenchang_outyuan.txt';
s2='C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\userlaji1.txt';
s3='C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\userlajiweibo__out2.txt';
[data1 l]=zhuanhuanshuxing(s1,s3);
data2=zhuanhuanshuxing(s2,s3);

alldata=[data1 ones(length(data1),1) zeros(length(data1),1);data2 zeros(length(data2),1) ones(length(data2),1)];
%     zhanghushibieshuju=data;
%     save('C:\Users\admini\Desktop\aaaaa\zhanghaoshibie\data_qianjiaxinxiban.mat','alldata','-mat');
end

        
    
    
    
    