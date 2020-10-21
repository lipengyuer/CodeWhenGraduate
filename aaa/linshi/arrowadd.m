function arrowadd(coordinate_start,coordinate_end,words)%输入分别为起始坐标（如[0.5 0.5]），箭头坐标，注释文字（如‘这是什么’）
 x = 0:0.01:1; %正弦横坐标
 y = sin(x*10);%正弦函数
 plot(x,y);
 point_start = [coordinate_start(1) coordinate_end(2)];%后面的“annotation”要求将起点、终点的横坐标放一块；纵坐标也是
 point_end = [coordinate_start(2) coordinate_end(2)];
 h = annotation('textarrow',point_start,point_end);%画箭头
 set(h, 'string',words, 'fontsize', 15);%写注释文字
 end