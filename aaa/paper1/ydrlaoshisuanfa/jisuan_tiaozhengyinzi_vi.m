function [shiyan_]= jisuan_tiaozhengyinzi_vi(hezi,geshu)
tiao = [[2.59080000000000,2.40453333333333,2.21826666666667,2.03200000000000,1.84573333333333,1.65946666666667,1.47320000000000,1.38853333333333,1.30386666666667,1.21920000000000,1.13453333333333,1.04986666666667,0.965199999999999,0.905933333333333,0.846666666666667,0.787400000000000,0.728133333333333,0.668866666666667,0.609600000000000,0.575733333333334,0.541866666666667,0.508000000000000,0.474133333333333,0.440266666666667,0.406400000000000,0.406400000000000,0.406400000000000,0.406400000000000,0.406400000000000,0.406400000000000,0.406400000000000,0.457200000000000,0.508000000000000,0.558800000000000,0.609600000000000,0.660400000000000,0.711200000000000,0.855133333333333,0.999066666666666,1.14300000000000,1.28693333333333,1.43086666666667,1.57480000000000,2.02353333333333,2.47226666666667,2.92100000000000,3.36973333333333,3.81846666666667,4.26720000000000,4.56353333333333,4.85986666666667,5.15620000000000,5.45253333333333,5.74886666666667,6.04520000000000,6.18913333333333,6.33306666666667,6.47700000000000,6.62093333333333,6.76486666666667,6.90880000000000,6.90880000000000,6.90880000000000,6.90880000000000,6.90880000000000,6.90880000000000,6.90880000000000,6.84106666666667,6.77333333333333,6.70560000000000,6.63786666666667,6.57013333333333,6.50240000000000,6.54473333333333,6.58706666666667,6.62940000000000,6.67173333333333,6.71406666666667,6.75640000000000,6.72253333333333,6.68866666666667,6.65480000000000,6.62093333333333,6.58706666666667,6.55320000000000,6.60400000000000,6.65480000000000,6.70560000000000,6.75640000000000,6.80720000000000,6.85800000000000,6.84953333333333,6.84106666666667,6.83260000000000,6.82413333333333,6.81566666666667,6.80720000000000,6.62940000000000,6.45160000000000,6.27380000000000,6.09600000000000,5.91820000000000,5.74040000000000,5.54566666666667,5.35093333333333,5.15620000000000,4.96146666666667,4.76673333333333,4.57200000000000,4.55506666666667,4.53813333333333,4.52120000000000,4.50426666666667,4.48733333333333,4.47040000000000,4.52120000000000,4.57200000000000,4.62280000000000,4.67360000000000,4.72440000000000,4.77520000000000,4.76673333333333,4.75826666666667,4.74980000000000,4.74133333333333,4.73286666666667,4.72440000000000,4.68206666666667,4.63973333333333,4.59740000000000,4.55506666666667,4.51273333333333,4.47040000000000,4.29260000000000,4.11480000000000,3.93700000000000,3.75920000000000,3.58140000000000,3.40360000000000,3.26813333333333,3.13266666666667,2.99720000000000,2.86173333333333,2.72626666666667;]];
shichang = 720;
num_zhuanfa = hezi(1:shichang,:)./repmat(geshu',shichang,1);
% num_zhuanfa1 = num_zhuanfa./repmat(sum(num_zhuanfa),shichang,1);
log_num_zhunafa = log((num_zhuanfa));
log_num_zhunafa1 = log_num_zhunafa(:,1:12);
shiyan = log_num_zhunafa1(:,1)';
for cixu = 1:50
    xishu = cixu/50;
shiyan_(cixu,:) = shiyan - 0*xishu*log([tiao(6*7+1:144) repmat(tiao,1,4) tiao(1:6*7)]);
end
nihe = exp(4.1688-0.01*[1:shichang]).*log([tiao(6*7+1:144) repmat(tiao,1,4) tiao(1:6*7)]);
plot(0.66*0.5*nihe,'r');hold on,plot(num_zhuanfa(:,1)');
end