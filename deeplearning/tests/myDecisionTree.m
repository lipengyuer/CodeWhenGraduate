indices = crossvalind('Kfold',group,10);
result = 0;
for i=1:10
 test = (indices == i); train = ~test;
 for j=1:1
 %indexForFeature = crossvalind('Kfold',feature,18);
 %featureIndex = (indexForFeature==j);
 train_x = instance(train,:);
 train_y = group(train,:);
 test_x = instance(test,:);
 test_y = group(test,:);
 %Construct the model 
 model = classregtree(train_x, train_y, 'method','classification','prune','on');
 %Test 
 yPredicted = eval(model, test_x);
 cm = confusionmat(test_y,yPredicted);
 N = sum(cm(:));
 err = (N-sum(diag(cm)))/N;
 accuracy = 1-err;
 result = result + accuracy;
 fprintf(' The temporal result is  %.3f . \n' , accuracy)
 end;
end;
 fprintf(' The last result is  %.3f . \n' , result/10)