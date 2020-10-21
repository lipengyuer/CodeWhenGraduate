  shuru=testdata_norm;
%   mubiao =test_y;
  jishuqi=0;
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
  jishuqi=jishuqi+length(find(LE==LE1));
  wucha = wucha- sum(sum( mubiao(:,1:end).*log(mubiaoout))) ;
  ermubiaoout=mubiaoout;
  count=zeros(3,1);
  for n=1:N
    if(mubiaoout(n,1)>0.5)
        ermubiaoout(n,:)=[1 0];
    else
        ermubiaoout(n,:)=[0 1];
       
    end
   if(ermubiaoout(n,:)~=mubiao(n,:));
   
        count(1)=count(1)+1;
  
        if(mubiao(n,1)==0)
            count(2)=count(2)+1;
        end
         if(mubiao(n,1)==1)
             count(3)=count(3)+1;
         end
    end
  end