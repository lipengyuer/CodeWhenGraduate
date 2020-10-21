% x=linspace(28,35.5,751);
% y=linspace(0,32,3201);
% [X,Y]=meshgrid(x,y);
% index=find(x==33); % 选择盐度起始值 33
% Z=(X.^2+Y.^2).^0.5; % lim=[28,47.794]
% v=floor(min(min(Z))):3:ceil(max(max(Z))); % 坐标值标注范围及间距
% [C,h]=contour(X,Y,Z,v); % 标注v设定的等值线 h为contour图handle
% h_text=clabel(C,h,'labelSpacing',500); 
% % h_text为一组句柄，每个句柄代表每个等值线的标注，共有length(v)个
% % LabelSpacing 表示每条等值线距离多远标注一个值，默认为72，每条线标注很多
% % 只需要一个时，将该值设置较大，则每条线仅标一个
% colormap copper  % 设置 铜色等值线
% 
% % 单独设置每条等值线上的字符，例如设置为3位含1位小数格式
% for kk=1:length(h_text)
% set(h_text(kk),'string',sprintf('%3.1f',get(h_text(kk),'userdata')))
% end
% % 也可以试试加个字符，例如
% set(h_text(1),'string','很好玩吧')
% 
% % Contour图上也可以加入plot 以及floatAxis
% hold on
% h1=plot(x,15*(1+sin(x)),'k:');
% set(h1,'linewidth',2)
% xlabel('y=15*(1+sin(x))')
% 
% [h2,ax1,ax2]=floatAxisX(x,15*(1+cos(x)),'k-','y=15*(1+cos(x))',[28,35.5,0,32]);
% set(h2,'linewidth',2)
% % 调用floatAxisX，双横轴，前两项必须输入，后三项均optional
% % nargin=2 
% % 输入 x,y值
% % nargin=3
% % 定义曲线,默认为'k-',黑实线
% % nargin=4
% % 定义x轴label,'string'
% % nargin=5
% % 定义x,y范围, [xmin,xmax,ymin,ymax]
% % set(gcf,'color','w')
% % [X,map]=getframe(gcf);
% % imwrite(X,'image\test_contour.jpg')

figure;
plot(1:10,'b');
floatAxisX([1:10],2*[1:10],'k');
