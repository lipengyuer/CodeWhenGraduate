function weizhi=findweizhioftopn(x,n)
xuhao1=(1:length(x))';
hezi=[x' xuhao1];
hezi1=sortrows(hezi,-1);
weizhi=hezi1(1:n,2);
end