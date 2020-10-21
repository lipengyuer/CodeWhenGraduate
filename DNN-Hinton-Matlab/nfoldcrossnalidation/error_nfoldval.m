%   
%   shuru=aaaaa;
%   mubiao =bbbbb(:,1);
%   jishuqi_error=0;
%   wucha=0;
%   N=size(shuru,1);
%   shuru = [shuru ones(N,1)];
% 
%   w1p = 1./(1 + exp(-shuru*w1)); w1p = [w1p  ones(N,1)];
%   w2p = 1./(1 + exp(-w1p*w2)); w2p = [w2p ones(N,1)];
%   w3p = 1./(1 + exp(-w2p*w3)); w3p = [w3p  ones(N,1)];
%   mubiaoout = exp(w3p*w_class);
%   mubiaoout = mubiaoout./repmat(sum(mubiaoout,2),1,2);
% 
%   [CA LE]=max(mubiaoout,[],2);
%   [CA1 LE1]=max(mubiao,[],2);
%   jishuqi_error=jishuqi_error+length(find(LE==LE1));
% %   wucha = wucha- sum(sum( mubiao(:,1:end).*log(mubiaoout))) ;
%   ermubiaoout=mubiaoout;
%  
%   for n=1:N
%     if(mubiaoout(n,1)>0.5)
%         ermubiaoout(n,:)=[1 0];
%     else
%         ermubiaoout(n,:)=[0 1];
%     end
%    if(ermubiaoout(n,1)~=mubiao(n,1));
%         count_train(jishuqi,1)=count_train(jishuqi,1)+1;
%   
%         if(mubiao(n,1)==0)
%             count_train(jishuqi,2)=count_train(jishuqi,2)+1;
%         end
%          if(mubiao(n,1)==1)
%              count_train(jishuqi,3)=count_train(jishuqi,3)+1;
%          end
%     end
%   end
%%%%%%%%%%%²âÊÔ¼¯%%%%%%%%%%%%%%%%555
shuru=aaaaaaaa;
  mubiao =bbbbbbbb;
  jishuqi_1_1=0;
  wucha=0;
  N=size(shuru,1);
  shuru = [shuru ones(N,1)];

  w1p = 1./(1 + exp(-shuru*w1)); w1p = [w1p  ones(N,1)];
  w2p = 1./(1 + exp(-w1p*w2)); w2p = [w2p ones(N,1)];
  w3p = 1./(1 + exp(-w2p*w3)); w3p = [w3p  ones(N,1)];
  mubiaoout = exp(w3p*w_class);
  mubiaoout = mubiaoout./repmat(sum(mubiaoout,2),1,2);

  [CA LE]=max(mubiaoout,[],2);
  [CA1 LE1]=max(mubiao,[],2);
%   jishuqi_1=jishuqi_1+length(find(LE==LE1));
  wucha = wucha- sum(sum( mubiao(:,1:end).*log(mubiaoout))) ;
  
% count=0;
  ermubiaoout=mubiaoout;

  for n=1:N
    if(mubiaoout(n,1)>0.5)
        ermubiaoout(n,:)=[1 0];
    else
        ermubiaoout(n,:)=[0 1];
       
    end
    if(ermubiaoout(n,:)~=mubiao(n,:));
   
        count(jishuqi,1)=count(jishuqi,1)+1;
  
        if(mubiao(n,1)==0)
            count(jishuqi,2)=count(jishuqi,2)+1;
        end
         if(mubiao(n,1)==1)
             count(jishuqi,3)=count(jishuqi,3)+1;
         end
    end
  end