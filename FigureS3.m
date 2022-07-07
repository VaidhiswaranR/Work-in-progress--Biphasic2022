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
parameters      = [0,0.01,2.42*0.1,sqrt(2)/6,0.1,0.1,0.01,0.1,1,0.01,0.05,6];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 32]); ylim([0 12]); xticks([0:8:32]); yticks([0:3:12]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS3/FigS3_a0.fig'); close all;

System          = 'Net_Bi_NFB';
parameters      = [1,0.01,2.42*0.1,sqrt(2)/6,0.1,0.1,0.01,0.1,1,0.01,0.05,6];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 80]); ylim([0 40]); xticks('auto'); yticks('auto');
title('Biphasic Interaction within NFB Network Motif (Open system)','FontSize',16);
subtitle('Perturbation of homeostatic response','Interpreter','latex');
a = ylabel('\textbf{R}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\textbf{S}','Interpreter','latex'); a.FontSize=18;
xlim([0 60]); ylim([0 16]); xticks([0:15:60]); yticks([0:4:16]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS3/FigS3_a.fig'); close all;


%% Panel B
% Results pertaining to the PFB with the open system model
System          = 'Net_Bi_PFB';
parameters      = [0,0.01,2.42*0.5,sqrt(2)/5,0.01,0.5,2.5,1,1,0.5,0.8,5];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig20 = Main(System,parameters,initial,ap,ip,flag);
ylim([0 2]); yticks([0:0.5:2]); xlim([0 160]); xticks([0:40:160]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS3/FigS3_b0.fig'); close all;

System          = 'Net_Bi_PFB';
parameters      = [1,0.01,2.42*0.5,sqrt(2)/5,0.01,0.5,2.5,1,1,0.5,0.8,5];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig2 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic Interaction within PFB Network Motif (Open system)','FontSize',16);
subtitle('Removal of multistability','Interpreter','latex');
a = ylabel('\textbf{R}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\textbf{S}','Interpreter','latex'); a.FontSize=18;
ylim([0 2]); yticks([0:0.5:2]); xlim([0 160]); xticks([0:40:160]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS3/FigS3_b.fig'); close all;

toc