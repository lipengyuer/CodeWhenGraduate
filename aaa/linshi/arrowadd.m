function arrowadd(coordinate_start,coordinate_end,words)%����ֱ�Ϊ��ʼ���꣨��[0.5 0.5]������ͷ���꣬ע�����֣��确����ʲô����
 x = 0:0.01:1; %���Һ�����
 y = sin(x*10);%���Һ���
 plot(x,y);
 point_start = [coordinate_start(1) coordinate_end(2)];%����ġ�annotation��Ҫ����㡢�յ�ĺ������һ�飻������Ҳ��
 point_end = [coordinate_start(2) coordinate_end(2)];
 h = annotation('textarrow',point_start,point_end);%����ͷ
 set(h, 'string',words, 'fontsize', 15);%дע������
 end