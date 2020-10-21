

result = 0;  
for i = 1:1
%%create the train data and test data
   %train_x = unInstance;
   %train_y = unLabelForSVM;
   
   positive_x = unInstance(1:100000,:);
   positive_y = unLabelForSVM(1:100000,:);
   
   negative_x = unInstance(100001:200000,:);
   negative_y = unLabelForSVM(100001:200000,:);
   
   k = randperm(100000);
   
   positive_x = positive_x(k(1:50000),:);
   positive_y = positive_y(k(1:50000),:);
   
   negative_x = negative_x(k(1:50000),:);
   negative_y = negative_y(k(1:50000),:);
   
   train_x = [positive_x;negative_x];
   train_y = [positive_y;negative_y];
   
   test_x = instance;
   test_y = labelForSVM;
tic;
%%Train a svm classifier
model = svmtrain(train_y, train_x, '-t 2 -g .01 -c 0.7 -b 1');

%%Predict the data using the model
[predict_label, accuracy, prob_estimates] = svmpredict(test_y, test_x, model, '-b 1');
fprintf(' The accuracy is  %.3f . \n' , accuracy)
result = result + accuracy;
end;
fprintf('The result is %.3f . \n',result)
toc