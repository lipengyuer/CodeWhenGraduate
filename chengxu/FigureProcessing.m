% % figure resize
% set(gcf,'Units','centimeters','Position',[10 10 7 5]);%设置图片大小为7cm×5cm
% % set(gcf,'Position',[100 100 260 220]);
% set(gca,'Position',[.13 .17 .80 .74]);  %调整 XLABLE和YLABLE不会被切掉
% figure_FontSize=8;
% set(get(gca,'XLabel'),'FontSize',figure_FontSize,'Vertical','top');
% set(get(gca,'YLabel'),'FontSize',figure_FontSize,'Vertical','middle');
% set(findobj('FontSize',9),'FontSize',figure_FontSize);
% set(findobj(get(gca,'Children'),'LineWidth',1),'LineWidth',0.5);

 
% 
% 解释：
% 
% set(gcf,'Position',[100 100 260 220]);
% 这句是设置绘图的大小，不需要到word里再调整大小。我给的参数，图的大小是7cm
% 
% set(gca,'Position',[.13 .17 .80 .74]);
% 这句是设置xy轴在图片中占的比例，可能需要自己微调。
% 
% figure_FontSize=8;
% set(get(gca,'XLabel'),'FontSize',figure_FontSize,'Vertical','top');
% set(get(gca,'YLabel'),'FontSize',figure_FontSize,'Vertical','middle');
% set(findobj('FontSize',10),'FontSize',figure_FontSize);
% 
% 这4句是将字体大小改为8号字，在小图里很清晰
% 
% set(findobj(get(gca,'Children'),'LineWidth',0.5),'LineWidth',2);
% 
% 这句是将线宽改为2

set(gcf,'Units','centimeters','Position',[4 4 7 5]);%设置图片大小为7cm×5cm
%get hanlde to current axis返回当前图形的当前坐标轴的句柄,
%(the first element is the relative distance of the axes to the left edge of the figure,...
%the second the vertical distance from the bottom, and then the width and height;
set(gca,'Position',[.20 .20 .75 .68]);%设置xy轴在图片中占的比例
set(gca, 'Fontname', 'Times newman', 'Fontsize', 9);
set(get(gca,'XLabel'),'FontSize',9);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',9);
set(get(gca,'TITLE'),'FontSize',9);
set(gca,'fontsize',9);
set(gca,'linewidth',1); %坐标线粗0.5磅
set(gca,'box','off');%Controls the box around the plotting area
set(get(gca,'Children'),'linewidth',1);%设置图中线宽1.5磅