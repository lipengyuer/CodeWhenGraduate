% x=linspace(28,35.5,751);
% y=linspace(0,32,3201);
% [X,Y]=meshgrid(x,y);
% index=find(x==33); % ѡ���ζ���ʼֵ 33
% Z=(X.^2+Y.^2).^0.5; % lim=[28,47.794]
% v=floor(min(min(Z))):3:ceil(max(max(Z))); % ����ֵ��ע��Χ�����
% [C,h]=contour(X,Y,Z,v); % ��עv�趨�ĵ�ֵ�� hΪcontourͼhandle
% h_text=clabel(C,h,'labelSpacing',500); 
% % h_textΪһ������ÿ���������ÿ����ֵ�ߵı�ע������length(v)��
% % LabelSpacing ��ʾÿ����ֵ�߾����Զ��עһ��ֵ��Ĭ��Ϊ72��ÿ���߱�ע�ܶ�
% % ֻ��Ҫһ��ʱ������ֵ���ýϴ���ÿ���߽���һ��
% colormap copper  % ���� ͭɫ��ֵ��
% 
% % ��������ÿ����ֵ���ϵ��ַ�����������Ϊ3λ��1λС����ʽ
% for kk=1:length(h_text)
% set(h_text(kk),'string',sprintf('%3.1f',get(h_text(kk),'userdata')))
% end
% % Ҳ�������ԼӸ��ַ�������
% set(h_text(1),'string','�ܺ����')
% 
% % Contourͼ��Ҳ���Լ���plot �Լ�floatAxis
% hold on
% h1=plot(x,15*(1+sin(x)),'k:');
% set(h1,'linewidth',2)
% xlabel('y=15*(1+sin(x))')
% 
% [h2,ax1,ax2]=floatAxisX(x,15*(1+cos(x)),'k-','y=15*(1+cos(x))',[28,35.5,0,32]);
% set(h2,'linewidth',2)
% % ����floatAxisX��˫���ᣬǰ����������룬�������optional
% % nargin=2 
% % ���� x,yֵ
% % nargin=3
% % ��������,Ĭ��Ϊ'k-',��ʵ��
% % nargin=4
% % ����x��label,'string'
% % nargin=5
% % ����x,y��Χ, [xmin,xmax,ymin,ymax]
% % set(gcf,'color','w')
% % [X,map]=getframe(gcf);
% % imwrite(X,'image\test_contour.jpg')

figure;
plot(1:10,'b');
floatAxisX([1:10],2*[1:10],'k');
