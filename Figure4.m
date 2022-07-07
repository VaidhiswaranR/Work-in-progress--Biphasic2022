tic

clear 
clc
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures'))
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/matcont6p11'))
mkdir('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F4');
close all

%% Panel A 
% Substrate biphasic response in pYpTErk
System          = 'ERK';
parameters      = [0.0747,0.0957,0.0104,0.18,0.18,0.18,0.27,0.27,0.27,0.0338,0.00851,0.0106,0.18,0.18,0.18,0.27,0.27,0.27,0.01,0.12,1];
initial         = [0,0,0,0,0,0,0,0,0];
ap              = [19];
ip		        = 5;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('Ordered Model of Erk Regulation','FontSize',16);
subtitle('Substrate biphasic dose response - pYpTErk vs $Erk_{Total}$','Interpreter','latex');
a = ylabel('$\bf{pYpTErk}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=15;
a = xlabel('$\bf{Erk_{Total}}$','Interpreter','latex'); a.FontSize=15;
xlim([0 200]); ylim([0 4]); xticks([0:50:200]); yticks([0:1:4]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F4/Fig4A.fig'); close all;

%% Panel B 
% Enzyme biphasic response in pYpTErk
System          = 'ERK';
parameters      = [2,1,1,0.18,0.18,0.18,0.27,0.27,0.27,0.1,5,0.1,0.18,0.18,0.18,0.27,0.27,0.27,100,0.01,5];
initial         = [0,0,0,0,0,0,0,0,0];
ap              = [20];
ip		        = 5;
flag            = 0;

fig2 = Main(System,parameters,initial,ap,ip,flag);
title('Ordered Model of Erk Regulation','FontSize',16);
subtitle('Enzyme biphasic dose response - pYpTErk vs $Mek_{Total}$','Interpreter','latex');
a = ylabel('$\bf{pYpTErk}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=15;
a = xlabel('$\bf{Mek_{Total}}$','Interpreter','latex'); a.FontSize=15;
xlim([0 200]); ylim([0 60]); xticks([0:50:200]); yticks([0:15:60]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F4/Fig4B.fig'); close all;

%% Panel C
% Landscape plot showing the presence of both biphasic responses in the system
k1 	    = 0.1;  k2 	    = 1;    k4 	    = 10;
p2 	    = 0.01; p3 	    = 40;   p4 	    = 1;
kb1 	= 1;    kb2 	= 1;    kb4 	= 1;
pb2 	= 1;    pb3 	= 1;    pb4 	= 1;
kub1 	= 1;    kub2 	= 1;    kub4 	= 1;
pub2 	= 1;    pub3 	= 1;    pub4 	= 1;
PTotal 	= 5;

c1 = kb1/(k1 + kub1); c2 = kb2/(k2 + kub2); c4 = kb4/(k4 + kub4); 
d3 = pb3/(p3 + pub3); d2 = pb2/(p2 + pub2); d4 = pb4/(p4 + pub4);

[ErkTotal, MekTotal] = meshgrid(linspace(0.1,1e2+10,1e3),linspace(0.1,1e2+10,1e3));

[m,n]	= 	size(ErkTotal);
k	=	1;
for i = 1:1:m
	for j = 1:1:n

		Poly = [-c1*c2^2*d2^2*k1^2*k2^2*p2^2*PTotal, -2*c2^2*d2*(MekTotal(i,j)*d2*(-d3*ErkTotal(i,j) + d3*PTotal - 1)*p2^2/2 + (-PTotal*d2*d3*p3/2 + p3*(-1 + (MekTotal(i,j) + ErkTotal(i,j))*d3)*d2/2 + p3*d3/2 + d4*(p4 + p3/2))*PTotal*p2 - PTotal^2*d2*d3*p3^2/2)*k2^2*k1^2*c1, 2*k2*(((-k2*(PTotal*d3*(MekTotal(i,j) - ErkTotal(i,j))*p3^2 - p2*(-d3*PTotal - 1 + (MekTotal(i,j) - ErkTotal(i,j))*d3)*MekTotal(i,j)*p3 - MekTotal(i,j)^2*d3*p2^2)*k1*d2^2/2 + ((d3*((d4*PTotal/2 + 1/2 + (-MekTotal(i,j)/2 - ErkTotal(i,j)/2)*d4)*k2 + PTotal*p4*d4)*PTotal*p3^2 + ((p4*PTotal^2*d3*d4/2 - (((2*MekTotal(i,j)*p2 + p4*(MekTotal(i,j) + ErkTotal(i,j)))*d3 - p4)*d4*PTotal)/2 + p2*((1/2 + ErkTotal(i,j)*d4)*d3 + d4/2)*MekTotal(i,j))*k2 - p2*PTotal*p4*(-d3*PTotal - 1 + (MekTotal(i,j) + ErkTotal(i,j))*d3)*d4/2)*p3 - p4*MekTotal(i,j)*d4*k2*p2*(-d3*ErkTotal(i,j) + d3*PTotal - 1))*k1 + k2*PTotal*p4*p3*d4*(d3*PTotal*p3 - p2*(-d3*PTotal - 1 + (MekTotal(i,j) + ErkTotal(i,j))*d3)/2))*d2 - PTotal*d4*k1*k2*(p3 + p4)*(d3*p3 + d4*p4)/2)*c2 - p3*p4*PTotal*d2*d4*k1*p2*(c4 + d3)/2)*c1 - c2*d2*d3*d4*k2*p2*p3*p4*PTotal/2)*c2*k1, (((-(d3*(PTotal - ErkTotal(i,j))*p3 + (-1 + (PTotal - ErkTotal(i,j))*d3)*p4)*MekTotal(i,j)*c2*(p3 + p4)*k2^2 - PTotal*p3*((1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*c2)*d3*p3 + ((1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*c2)*d3 - c2 + c4)*p4)*p4*k2 + p3^2*p4^2*PTotal^2*c2*d3)*c1*k1^2 + 2*k2*PTotal*c2*((-d3*(1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*c1)*p3/2 - (((-1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*d3)*c1 + d3)*p4)/2)*k2 + c1*p3*p4*PTotal*d3)*p3*p4*k1 + c1*p3^2*p4^2*PTotal^2*c2*d3*k2^2)*d4^2 + k2*k1*((2*MekTotal(i,j)*c2*(d3*(-d2*ErkTotal(i,j) + d2*MekTotal(i,j) - d2*PTotal + 1)*p3^2/2 + ((d3*(1/2*MekTotal(i,j)*d2 - 1/2*PTotal*d2 - 1/2*ErkTotal(i,j)*d2 + 1/2) - d2/2)*p4 + p2*MekTotal(i,j)*d2*d3)*p3 + p4*p2*MekTotal(i,j)*d2*d3)*k2 + (-2*d3*PTotal*((MekTotal(i,j)*d2 - ErkTotal(i,j)*d2 - 1/2)*c2 + MekTotal(i,j)*c4*d2/2 - PTotal*c4*d2/2 + ErkTotal(i,j)*c4*d2/2 + c4/2 - d2/2)*p3 + d2*MekTotal(i,j)*(((MekTotal(i,j) - PTotal - ErkTotal(i,j))*c2 - 2*PTotal*c4 + 2*ErkTotal(i,j)*c4 + 1)*d3 - c2 + c4)*p2)*p3*p4)*c1*k1 + p3*(c2*(-2*d3*PTotal*((MekTotal(i,j)*d2 - ErkTotal(i,j)*d2 - 1/2)*c1 - d2/2)*p3 + MekTotal(i,j)*d2*p2*((-1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*d3)*c1 + d3))*k2 - PTotal*(-2*c1*PTotal*d3*p3 + ((-1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*d3)*c1 + d3)*p2)*d2*k4*c4)*p4)*d4 - c1*c2*d2*d3*k1^2*k2^2*p3^2*MekTotal(i,j))*c2, 2*((-d3*(PTotal*(k1 + k2)*(c1*(MekTotal(i,j) - ErkTotal(i,j))*k1 + k2*(-1 + (MekTotal(i,j) - ErkTotal(i,j))*c1))*d4*p4^2 - k2*MekTotal(i,j)*k1*((-1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*d4)*c1*k1 + k2*((-1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*d4)*c1 - d2 + d4))*p4 - c1*MekTotal(i,j)^2*d4*k1^2*k2^2)*p3^2/2 + k2*MekTotal(i,j)*k1*d4*p4*(((-1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*d3)*c1*k1 + k2*((1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*c1)*d3 - c1))*p4 + 2*c1*MekTotal(i,j)*d3*k1*k2)*p3/2 + c1*p4^2*MekTotal(i,j)^2*d3*d4*k1^2*k2^2/2)*c2^2 + p3*(-d3*(PTotal*d4*(c1*(c4*ErkTotal(i,j) + c4*MekTotal(i,j) - c4*PTotal - 1)*k1^2 + (((c4*ErkTotal(i,j) + c4*MekTotal(i,j) - c4*PTotal - 1)*c1 + c4)*k2 - 2*c1*PTotal*c4*k4)*k1 - 2*c1*c4*k2*k4*PTotal)*p4 - k2*(((2*c4*ErkTotal(i,j) - 2*c4*PTotal + 1)*d4 + MekTotal(i,j)*c4*d2 - PTotal*c4*d2 - ErkTotal(i,j)*c4*d2 + c4 - d2)*MekTotal(i,j)*c1*k1 - 2*PTotal*k4*c4*(((MekTotal(i,j)/2 - PTotal/2 + ErkTotal(i,j)/2)*d4 + MekTotal(i,j)*d2 - ErkTotal(i,j)*d2 - 1/2)*c1 - d2/2 + d4/2))*k1)*p3/2 + k2*(-d4*(MekTotal(i,j)*((PTotal*c4 - ErkTotal(i,j)*c4 - 1/2)*d3 - c4/2)*c1*k1 + PTotal*k4*(d3*(1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*c1) - c1)*c4/2)*p4 + d2*MekTotal(i,j)*p2*c4*(c1*MekTotal(i,j)*d3*k1 + k4*((1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*c1)*d3 - c1)/2))*k1)*p4*c2 - c1*k1^2*c4*d3*d4*p3^2*p4^2*PTotal/2)*d4, (((-p4*p3*(c1*MekTotal(i,j)*(PTotal - ErkTotal(i,j))*k1^2 + (c1*MekTotal(i,j) + 1 + (-PTotal + ErkTotal(i,j))*c1)*k4*PTotal*k1 - c1*PTotal^2*k4^2)*c4^2 + ((((MekTotal(i,j)*c2 + 1 + (-PTotal - ErkTotal(i,j))*c2)*p4 + 2*MekTotal(i,j)*c2*k2)*p3 + 2*p4*MekTotal(i,j)*c2*k2)*MekTotal(i,j)*c1*k1^2 + (((c1*MekTotal(i,j)^2*c2*k2 - (((PTotal + ErkTotal(i,j))*k2 + 2*PTotal*k4)*c1 - k2)*c2*MekTotal(i,j) + 2*k4*PTotal*((ErkTotal(i,j)*c2 + 1/2)*c1 + c2/2))*p4 + k2*k4*c2*(c1*MekTotal(i,j) + 1 + (-PTotal - ErkTotal(i,j))*c1)*MekTotal(i,j))*p3 + k2*k4*c2*p4*(c1*MekTotal(i,j) + 1 + (-PTotal - ErkTotal(i,j))*c1)*MekTotal(i,j))*k1 - 2*p3*p4*PTotal*c2*k2*k4*(-c1*ErkTotal(i,j) + c1*MekTotal(i,j) - 1))*c4 - p3*p4*MekTotal(i,j)*c2*(k1 + k2)*(c1*k1 + c2*k2))*d4 - p3*MekTotal(i,j)*c2*c4*k1*k2*k4*(c1 + d2))*d3 - c1*c2*c4*d4*k1*k2*k4*p4*MekTotal(i,j))*p4*p3*d4, d4^2*(-PTotal*c4*(-c1*ErkTotal(i,j) + c1*MekTotal(i,j) - 1)*k4^2 + MekTotal(i,j)*(c1*MekTotal(i,j)*c4*k1 - (-1 + (PTotal + ErkTotal(i,j))*c1)*k1*c4 - c1*k1 - c2*(k1 + 2*k2))*k4 + c1*MekTotal(i,j)^2*c4*k1^2)*d3*p3^2*p4^2*c4, -c4^2*d3*d4^2*k4^2*p3^2*p4^2*MekTotal(i,j)];

		R	=	roots(Poly);
		R	=	R(R == real(R) & R>0);
		App = c2.*R.*k1.*k2.*(d2.*R.^2.*p2.*PTotal - d2.*R.*p2.*MekTotal(i,j) + d4.*R.*p4.*PTotal - d4.*p4.*MekTotal(i,j))./(d3.*(c2.*d2.*R.^2.*k1.*k2.*p2.*MekTotal(i,j) - c2.*d2.*R.^2.*k1.*k2.*p3.*PTotal + c2.*d4.*R.*k1.*k2.*p3.*MekTotal(i,j) + c2.*d4.*R.*k1.*k2.*p4.*MekTotal(i,j) - c2.*d4.*R.*k1.*p3.*p4.*PTotal - c2.*d4.*R.*k2.*p3.*p4.*PTotal + c4.*d4.*k1.*p3.*p4.*MekTotal(i,j) - c4.*d4.*k4.*p3.*p4.*PTotal));
		R	=	R(App>0);
		App = c2.*R.*k1.*k2.*(d2.*R.^2.*p2.*PTotal - d2.*R.*p2.*MekTotal(i,j) + d4.*R.*p4.*PTotal - d4.*p4.*MekTotal(i,j))./(d3.*(c2.*d2.*R.^2.*k1.*k2.*p2.*MekTotal(i,j) - c2.*d2.*R.^2.*k1.*k2.*p3.*PTotal + c2.*d4.*R.*k1.*k2.*p3.*MekTotal(i,j) + c2.*d4.*R.*k1.*k2.*p4.*MekTotal(i,j) - c2.*d4.*R.*k1.*p3.*p4.*PTotal - c2.*d4.*R.*k2.*p3.*p4.*PTotal + c4.*d4.*k1.*p3.*p4.*MekTotal(i,j) - c4.*d4.*k4.*p3.*p4.*PTotal));
		if length(App) ~= 1
			disp('Hey there is multistability here')
			Sol(i,j) = max(App);
			Sol2(i,j) = min(App);
		else
			Sol(i,j) = App;
			Sol2(i,j) = App;
		end

    end
end

for i=1:1:m
	[u,v] = max(Sol(i,:));
	En_index(i) = v;
end

for j=1:1:m
	[u,v] = max(Sol(:,j));
	Sub_index(j) = v;
end

fig3 = figure; hold on;
mesh(ErkTotal,MekTotal,Sol);
box on; grid on;
Extract  = Sol(sub2ind(size(Sol),Sub_index,[1:1:n]));
plot3(ErkTotal(1,:),MekTotal(Sub_index,1),Extract,'LineWidth',3.5);
Extract  = Sol(sub2ind(size(Sol),[1:1:m],En_index));
plot3(ErkTotal(1,En_index),MekTotal(:,1),Extract,'LineWidth',3.5);
a = ylabel('$\bf{Mek_{Total}}$','Interpreter','latex','fontweight','bold','HorizontalAlignment','right'); a.FontSize = 15;
a = xlabel('$\bf{Erk_{Total}}$','Interpreter','latex','fontweight','bold','HorizontalAlignment','left'); a.FontSize = 15;
a = zlabel('\bf{pYpTErk}','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center','fontweight','bold'); a.FontSize = 15;
zlim([0 2]); xlim([0 80]);  ylim([0 80]); view(3); caxis([0 2]);
h = gca(); h.FontWeight = 'bold'; h.LineWidth = 0.8;
xticks('auto'); yticks('auto'); zticks('auto');
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F4/Fig4C.fig'); close all;

clc

toc