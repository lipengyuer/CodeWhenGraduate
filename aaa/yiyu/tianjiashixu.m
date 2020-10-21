function [ data data1]=tianjiashixu
s1='C:\Users\admini\Desktop\aaaaa\depression\depressionFUserInfo.txt';
s2='C:\Users\admini\Desktop\aaaaa\depression\depressionTUserInfo.txt';
zifuchuan1=chuli_yiyu_(s1,201);
zifuchuan2=chuli_yiyu_(s2,198);

for m=1:length(zifuchuan1)
   
   if ~isempty(zifuchuan1{m,3}) 
       data1(m,1)=str2num(zifuchuan1{m,1});
    if(strcmp(zifuchuan1{m,3},'f'))
        data1(m,2)=1;
    else data1(m,2)=0;
    end
    
    for n=6:12
        data1(m,n-3)=str2num(zifuchuan1{m,n});
    end
   end
end
for m=1:length(zifuchuan2)
    
    if ~isempty(zifuchuan2{m,3})
        data2(m,1)=str2num(zifuchuan2{m,1});
    if(strcmp(zifuchuan2{m,3},'f'))
        data2(m,2)=1;
    else data2(m,2)=0;
    end
    
    for n=6:12
        data2(m,n-3)=str2num(zifuchuan2{m,n});
    end
    end
end
 data=[data1 zeros(length(data1),1) ones(length(data1),1);data2 ones(length(data2),1) zeros(length(data2),1)];
%Éî¶ÈÑ§Ï°°æ
ji_fans=eye(10);
for m=1:length(data)
%·ÛË¿Êı
if(data(m,1)==0)
    fans_(m,:)=ji_fans(1,:);
elseif(data(m,1)>0&&data(m,1)<=50)
    fans_(m,:)=ji_fans(2,:);
elseif(data(m,1)>50&&data(m,1)<=100)
    fans_(m,:)=ji_fans(3,:);    
elseif(data(m,1)>100&&data(m,1)<=15)
    fans_(m,:)=ji_fans(4,:);   
elseif(data(m,1)>150&&data(m,1)<=200)
    fans_(m,:)=ji_fans(5,:);   
 elseif(data(m,1)>200&&data(m,1)<=500)
    fans_(m,:)=ji_fans(6,:);      
 elseif(data(m,1)>500&&data(m,1)<=1000)
    fans_(m,:)=ji_fans(7,:);      
  elseif(data(m,1)>1000&&data(m,1)<=2000)
    fans_(m,:)=ji_fans(8,:);     
 elseif(data(m,1)>2000&&data(m,1)<=5000)
    fans_(m,:)=ji_fans(9,:);   
else fans_(m,:)=ji_fans(10,:); 
end

%¹Ø×¢Êı
if(data(m,2)==0)
    fol_(m,:)=ji_fans(1,:);
elseif(data(m,2)>0&&data(m,2)<=20)
    fol_(m,:)=ji_fans(2,:);
elseif(data(m,2)>20&&data(m,2)<=50)
    fol_(m,:)=ji_fans(3,:);    
elseif(data(m,2)>50&&data(m,2)<=100)
    fol_(m,:)=ji_fans(4,:);   
elseif(data(m,2)>100&&data(m,2)<=200)
    fol_(m,:)=ji_fans(5,:);   
 elseif(data(m,2)>200&&data(m,2)<=500)
    fol_(m,:)=ji_fans(6,:);      
 elseif(data(m,2)>500&&data(m,2)<=1000)
    fol_(m,:)=ji_fans(7,:);      
  elseif(data(m,2)>1000&&data(m,2)<=2000)
    fol_(m,:)=ji_fans(8,:);     
 elseif(data(m,2)>2000&&data(m,2)<=5000)
    fol_(m,:)=ji_fans(9,:);   
else fol_(m,:)=ji_fans(10,:); 
end

%»¥·ÛÊı
if(data(m,3)==0)
    bifol_(m,:)=ji_fans(1,:);
elseif(data(m,3)>0&&data(m,3)<=50)
    bifol_(m,:)=ji_fans(2,:);
elseif(data(m,3)>50&&data(m,3)<=100)
    bifol_(m,:)=ji_fans(3,:);    
elseif(data(m,3)>100&&data(m,3)<=150)
    bifol_(m,:)=ji_fans(4,:);   
elseif(data(m,3)>150&&data(m,3)<=200)
    bifol_(m,:)=ji_fans(5,:);   
 elseif(data(m,3)>200&&data(m,3)<=500)
    bifol_(m,:)=ji_fans(6,:);      
 elseif(data(m,3)>500&&data(m,3)<=1000)
    bifol_(m,:)=ji_fans(7,:);      
  elseif(data(m,3)>1000&&data(m,3)<=2000)
    bifol_(m,:)=ji_fans(8,:);     
 elseif(data(m,3)>2000&&data(m,3)<=5000)
    bifol_(m,:)=ji_fans(9,:);   
else bifol_(m,:)=ji_fans(10,:); 
end
    
 %×´Ì¬Êı
if(data(m,4)==0)
    states_(m,:)=ji_fans(1,:);
elseif(data(m,4)>0&&data(m,4)<=50)
    states_(m,:)=ji_fans(2,:);
elseif(data(m,4)>50&&data(m,4)<=100)
    states_(m,:)=ji_fans(3,:);    
elseif(data(m,4)>100&&data(m,4)<=150)
    states_(m,:)=ji_fans(4,:);   
elseif(data(m,4)>150&&data(m,4)<=200)
    states_(m,:)=ji_fans(5,:);   
 elseif(data(m,4)>200&&data(m,4)<=500)
    states_(m,:)=ji_fans(6,:);      
 elseif(data(m,4)>500&&data(m,4)<=1000)
    states_(m,:)=ji_fans(7,:);      
  elseif(data(m,4)>1000&&data(m,4)<=2000)
    states_(m,:)=ji_fans(8,:);     
 elseif(data(m,4)>2000&&data(m,4)<=5000)
    states_(m,:)=ji_fans(9,:);   
else states_(m,:)=ji_fans(10,:); 
end   
    
 %·ÛË¿Êı
if(data(m,5)==0)
    fav_(m,:)=ji_fans(1,:);
elseif(data(m,5)>0&&data(m,5)<=50)
    fav_(m,:)=ji_fans(2,:);
elseif(data(m,5)>50&&data(m,5)<=100)
    fav_(m,:)=ji_fans(3,:);    
elseif(data(m,5)>100&&data(m,5)<=150)
    fav_(m,:)=ji_fans(4,:);   
elseif(data(m,5)>150&&data(m,5)<=200)
    fav_(m,:)=ji_fans(5,:);   
 elseif(data(m,5)>200&&data(m,5)<=500)
    fav_(m,:)=ji_fans(6,:);      
 elseif(data(m,5)>500&&data(m,5)<=1000)
    fav_(m,:)=ji_fans(7,:);      
  elseif(data(m,5)>1000&&data(m,5)<=2000)
    fav_(m,:)=ji_fans(8,:);     
 elseif(data(m,5)>2000&&data(m,5)<=5000)
    fav_(m,:)=ji_fans(9,:);   
else fav_(m,:)=ji_fans(10,:); 
end   

end
data1=[fans_ fol_ bifol_ states_ fav_ data(:,end) ones(length(data),1)-data(:,end)];   
save('C:\Users\admini\Desktop\woca6.mat','data1','-mat');
end