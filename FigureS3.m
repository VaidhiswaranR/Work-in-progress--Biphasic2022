tic

clear 
clc
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures'))
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/matcont6p11'))
mkdir('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS3');
close all


%% Panel A
% Results pertaining to the NFB with the open system model
System          = 'Net_Bi_NFB';
% Switch,S,b1,b2,k0,k1,k2,k3,k4,K3,K4,ATotal
% parameters      = [0,0.01,2.25*0.1,sqrt(2)/4,0.1,0.1,0.001,0.1,2,0.1,0.01,4];
parameters      = [0,0.01,2.25*0.1,sqrt(2)/4,0.1,0.1,0.01,0.1,1,0.02,0.05,4];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 80]); ylim([0 40]); xticks('auto'); yticks('auto');
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS3/FigS3_a0.fig'); close all;

System          = 'Net_Bi_NFB';
% parameters      = [1,0.01,0.5,0.8,0.1,0.1,0.001,0.1,2,0.1,0.01,3];
parameters      = [1,0.01,2.25*0.2,sqrt(2)/3,0.2,0.2,0.05,0.1,1,0.01,0.1,3];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 80]); ylim([0 40]); xticks('auto'); yticks('auto');
title('Biphasic interaction within NFB network motif (Open system)','FontSize',16);
subtitle('Perturbation of homeostatic response','Interpreter','latex');
a = ylabel('Rp','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS3/FigS3_a.fig'); close all;


%% Panel B
% Results pertaining to the PFB with the open system model
System          = 'Net_Bi_PFB';
% Switch,S,b1,b2,k0,k1,k2,k3,k4,K3,K4,ATotal
parameters      = [0,0.01,2.25*0.5,sqrt(2)/2,0.01,0.5,3,1,1,0.5,0.8,2];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig90 = Main(System,parameters,initial,ap,ip,flag);
ylim([0 20]); yticks([0:4:20]); xlim([0 15]); xticks([0:3:15]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS3/FigS3_b0.fig'); close all;

System          = 'Net_Bi_PFB';
% parameters      = [1,0.01,0.1,5,0.01,0.5,1,1,1,0.5,0.1,3];
parameters      = [1,0.01,2.25*0.5,sqrt(2)/2,0.01,0.5,3,1,1,0.5,0.8,2];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig9 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interaction within PFB network motif (Open system)','FontSize',16);
subtitle('Removal of multistability','Interpreter','latex');
a = ylabel('R','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
ylim([0 12]); yticks([0:4:12]); xlim([0 250]); xticks([0:50:250]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS3/FigS3_b.fig'); close all;

toc