shuju=sortrows(data2,2);
test_x=shuju(:,6:end);
test_y=shuju(:,3:4);
yiyangma;

weizhi=find(test_y(:,1)~=ermubiaoout(:,1));
cuowu=shuju(weizhi(:,1),5);