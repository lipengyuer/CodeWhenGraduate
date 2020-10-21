
result = 0;   
for i = 1:1

   
   positive_x = unInstance(1:100000,:);
   positive_y = unLabelForCART(1:100000,:);
   
   negative_x = unInstance(100001:200000,:);
   negative_y = unLabelForCART(100001:200000,:);
   
   k = randperm(100000);
   
   positive_x = positive_x(k(1:100000),:);
   positive_y = positive_y(k(1:100000),:);
   
   negative_x = negative_x(k(1:100000),:);
   negative_y = negative_y(k(1:100000),:);
   
   train_x = [positive_x;negative_x];
   train_y = [positive_y;negative_y];
   
   test_x = instance;
   test_y = labelForCART;
 %Construct the model 
 model = classregtree(train_x, train_y, 'method','classification','prune','on');
 %Test 
 yPredicted = eval(model, test_x);
 cm = confusionmat(test_y,yPredicted);
 N = sum(cm(:));
 err = (N-sum(diag(cm)))/N;
 accuracy = 1-err;
 fprintf(' The accuracy is  %.3f . \n' , accuracy)
 result = result + accuracy;
end;
fprintf('The result is %.3f . \n',result)