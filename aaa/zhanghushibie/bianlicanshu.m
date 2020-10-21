% jiedianshu1=[20:20:200];
% jiedianshu2=[20:20:200];
% jiedianshu3=[20:20:400];
% jishu=0;
% for m1=1:length(jiedianshu1)
%     for m2=1:length(jiedianshu2)
%         for m3=1:length(jiedianshu3)
%                     m11=m1;
%                     m22=m2;
%                     m33=m3;
%                     for k=1:10
%                     mnistclassify;
%                     jishu=jishu+1;
%                     count1(jishu,:)=[m1 m2 m3 test_err(200)]; 
%                     count2(jishu,:)=[m1 m2 m3 train_err(200)];
%                     end
%         end
%     end
% end

for m1=1:20
                    mnistclassify;
                    jishu=jishu+1;
                    count1(jishu,:)=[test_err(100)]; 
                    count2(jishu,:)=[train_err(100)];
  
end

