
indices = crossvalind('Kfold',group,10);

 result = 0;
for i=1:10
 test = (indices == i); train = ~test;
 for j=1:1
 %indexForFeature = crossvalind('Kfold',feature,1);
 %featureIndex = (indexForFeature==j);
%%create the train data and test data
train_x = instance(train,:);
train_y = labelForSVM(train,:);
test_x = instance(test,:);
test_y = labelForSVM(test,:);

%%Train a svm classifier
model = svmtrain(train_y, train_x, '-t 2 -g .01 -c 0.7 -b 1');

%%Predict the data using the model
[predict_label, accuracy, prob_estimates] = svmpredict(test_y, test_x, model, '-b 1');
result = result +accuracy;
fprintf(' The temporal result is  %.3f . \n' , accuracy)
 end;
end;
fprintf(' The last result is  %.3f . \n' , result/10)