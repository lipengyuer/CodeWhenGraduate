% % figure resize
% set(gcf,'Units','centimeters','Position',[10 10 7 5]);%����ͼƬ��СΪ7cm��5cm
% % set(gcf,'Position',[100 100 260 220]);
% set(gca,'Position',[.13 .17 .80 .74]);  %���� XLABLE��YLABLE���ᱻ�е�
% figure_FontSize=8;
% set(get(gca,'XLabel'),'FontSize',figure_FontSize,'Vertical','top');
% set(get(gca,'YLabel'),'FontSize',figure_FontSize,'Vertical','middle');
% set(findobj('FontSize',9),'FontSize',figure_FontSize);
% set(findobj(get(gca,'Children'),'LineWidth',1),'LineWidth',0.5);

 
% 
% ���ͣ�
% 
% set(gcf,'Position',[100 100 260 220]);
% ��������û�ͼ�Ĵ�С������Ҫ��word���ٵ�����С���Ҹ��Ĳ�����ͼ�Ĵ�С��7cm
% 
% set(gca,'Position',[.13 .17 .80 .74]);
% ���������xy����ͼƬ��ռ�ı�����������Ҫ�Լ�΢����
% 
% figure_FontSize=8;
% set(get(gca,'XLabel'),'FontSize',figure_FontSize,'Vertical','top');
% set(get(gca,'YLabel'),'FontSize',figure_FontSize,'Vertical','middle');
% set(findobj('FontSize',10),'FontSize',figure_FontSize);
% 
% ��4���ǽ������С��Ϊ8���֣���Сͼ�������
% 
% set(findobj(get(gca,'Children'),'LineWidth',0.5),'LineWidth',2);
% 
% ����ǽ��߿��Ϊ2

set(gcf,'Units','centimeters','Position',[4 4 7 5]);%����ͼƬ��СΪ7cm��5cm
%get hanlde to current axis���ص�ǰͼ�εĵ�ǰ������ľ��,
%(the first element is the relative distance of the axes to the left edge of the figure,...
%the second the vertical distance from the bottom, and then the width and height;
set(gca,'Position',[.20 .20 .75 .68]);%����xy����ͼƬ��ռ�ı���
set(gca, 'Fontname', 'Times newman', 'Fontsize', 9);
set(get(gca,'XLabel'),'FontSize',9);%ͼ������Ϊ8 point��С5��
set(get(gca,'YLabel'),'FontSize',9);
set(get(gca,'TITLE'),'FontSize',9);
set(gca,'fontsize',9);
set(gca,'linewidth',1); %�����ߴ�0.5��
set(gca,'box','off');%Controls the box around the plotting area
set(get(gca,'Children'),'linewidth',1);%����ͼ���߿�1.5��