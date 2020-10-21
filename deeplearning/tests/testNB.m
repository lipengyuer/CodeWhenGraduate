indices = crossvalind('Kfold',groupForTest,10);
result  =0;
for i=1:10
   test = (indices == i); train = ~test;
   for j=1:1
   %indexForFeature = crossvalind('Kfold',feature,1);
   %featureIndex = (indexForFeature==j);
   train_x = meas(train,:);
   train_y = species(train,:);
   test_x = meas(test,:);
   test_y = species(test,:);


%# train model
nb = NaiveBayes.fit(train_x, train_y,'Distribution','kernel');

%# prediction
y = nb.predict(test_x);

%# confusion matrix
cm = confusionmat(test_y,y);
N = sum(cm(:));
err = (N-sum(diag(cm)))/N;
accuracy = 1-err;
result = result + accuracy;
fprintf(' The temporal result is  %.3f . \n' , accuracy)
    end;
end;
 fprintf(' The last result is  %.3f . \n' , result/10)