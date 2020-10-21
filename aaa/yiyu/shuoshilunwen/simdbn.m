  shuru=data;
  N=size(shuru,1);
  shuru = [shuru ones(N,1)];
  w1p = 1./(1 + exp(-shuru*w1)); w1p = [w1p  ones(N,1)];
  w2p = 1./(1 + exp(-w1p*w2)); w2p = [w2p ones(N,1)];
  w3p = 1./(1 + exp(-w2p*w3)); w3p = [w3p  ones(N,1)];
  mubiaoout = exp(w3p*w_class);
  mubiaoout = mubiaoout./repmat(sum(mubiaoout,2),1,2);
  [CA LE]=max(mubiaoout,[],2);
  ermubiaoout=mubiaoout;
  for n=1:N
    if(mubiaoout(n,1)>0.5)
        ermubiaoout(n,:)=[1 0];
    else
        ermubiaoout(n,:)=[0 1];
       
    end
  end