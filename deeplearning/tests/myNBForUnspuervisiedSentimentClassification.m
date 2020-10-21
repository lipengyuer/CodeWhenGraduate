%%
result = 0;
for i=1:1
   positive_x = unInstance(1:100000,:);
   positive_y = unLabelForNB(1:100000,:);
   
   negative_x = unInstance(100001:200000,:);
   negative_y = unLabelForNB(100001:200000,:);
   
   k = randperm(100000);
   
   positive_x = positive_x(k(1:6250),:);
   positive_y = positive_y(k(1:6250),:);
   
   negative_x = negative_x(k(1:6250),:);
   negative_y = negative_y(k(1:6250),:);
   
   train_x = [positive_x;negative_x];
   train_y = [positive_y;negative_y];
   
   test_x = instance;
   test_y = labelForNB;



%# train model
nb = NaiveBayes.fit(train_x, train_y,'Distribution','kernel');

%# prediction
y = nb.predict(test_x);

%# confusion matrix
cm = confusionmat(test_y,y);
N = sum(cm(:));
err = (N-sum(diag(cm)))/N;
accuracy = 1-err;
fprintf(' The accuracy is  %.4f . \n' , accuracy);
result = result + accuracy;
end;
fprintf('The result is %.3f .\n',result)