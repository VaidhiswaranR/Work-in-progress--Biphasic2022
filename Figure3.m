tic

clear 
clc
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures'))
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/matcont6p11'))
mkdir('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3');
close all

%% Panel A
% Upstream regulation of covalent modification cycle
System          = 'Bi_Cov';
parameters      = [0,0.01,1,0.01,1,2.42*4,sqrt(2)/20,4,1,1,1,1,1,20,5,3];
initial         = [0,0,0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 200]); xticks([0 50 100 150 200]); ylim([0 20]); yticks([0 5 10 15 20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A0.fig'); close all;

System          = 'Bi_Cov';
parameters      = [1,0.01,1,0.01,1,2.42*4,sqrt(2)/20,4,1,1,1,1,1,20,5,3];
initial         = [0,0,0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream Signal Regulation of Covalent Modification Cycle (N0)','FontSize',16);
subtitle('Biphasic dose response with signal','Interpreter','latex');
a = ylabel('$\bf{A_p}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
xlim([0 200]); xticks([0 50 100 150 200]); ylim([0 20]); yticks([0 5 10 15 20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel B
% Upstream regulation of DSP (commmon enzymes) - Presence of biphasic
System          = 'Bi_DSP';
% parameters      = [0,0.01,1,1,0.01,1,0.5,1,2,1,1,1,1,1,1,1,1,1,1,20,4,3];
parameters      = [0,0.01,1,1,0.01,2.42*1,sqrt(2)/3,1,2,1,1,1,1,1,1,1,1,1,1,20,4,3];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig20 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 25]); xticks([0:5:20]); ylim([0 20]); yticks([0:5:20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_a0.fig'); close all;

System          = 'Bi_DSP';
parameters      = [1,0.01,1,1,0.01,2.42*1,sqrt(2)/3,1,2,1,1,1,1,1,1,1,1,1,1,20,4,3];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig2 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream Signal Regulation of DSP (common enzymes) (N1)','FontSize',16);
subtitle('Prolonged homeostasis and biphasic dose response','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
xlim([0 20]); xticks([0:5:20]); ylim([0 20]); yticks([0:5:20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_a.fig'); close all;

% Upstream regulation of DSP (commmon enzymes) - Multiphasic and mutlistability (from biphasic)
System          = 'Bi_DSP';
parameters      = [0,0.01,0.1,1,0.01,2.42*0.1,sqrt(2)/8,1,5,1,8,1,1,1,1,1,1,1,1,20,5,2];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig30 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 4]); xticks([0:1:4]); ylim([0 20]); yticks([0:5:20]);
text(1.6,3,'LP','HorizontalAlignment','left')
text(1.2,6.5,'LP','HorizontalAlignment','left')
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_b0.fig'); close all;

System          = 'Bi_DSP';
parameters      = [1,0.01,0.1,1,0.01,2.42*0.1,sqrt(2)/8,1,5,1,8,1,1,1,1,1,1,1,1,20,5,2];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig3 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream Signal Regulation of DSP (common enzymes) (N1)','FontSize',16);
subtitle('Multiphasic and bistable response','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
xlim([0 60]); xticks([0:15:60]); ylim([0 20]); yticks([0:5:20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_b.fig'); close all;

% Upstream regulation of DSP (commmon enzymes) - Oscilaltions (Doesnt' seem to be working - CHECK LATER)
% System          = 'Bi_DSP';
% parameters      = [0,0.01,1,1,0.01,1,0.2,0.9,100,1,1,100,3,1,1,1,1,1,1,50,30,17];
% initial         = [0,0,0,0,0,0,0];
% ap              = [2];
% ip		        = 2;
% flag            = 0;

% fig4 = Main(System,parameters,initial,ap,ip,flag);
% title('Upstream regulation of DSP (common enzymes)','FontSize',16);
% subtitle('Perturbation of oscillatory response','Interpreter','latex');
% a = ylabel('$A_{pp}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('S','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_c.fig'); close all;

% Upstream regulation of DSP (commmon enzymes) - Interaction of the two biphasic
System          = 'Bi_DSP';
parameters      = [0,0.01,0.02,40,0.001,2.42*0.5,sqrt(2)/2,0.5,0.1,10,1,10,10,1,1,1,1,1,1,60,75,3];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		      = 2;
flag            = 0;

fig40 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 25]); xticks('auto'); ylim([0 20]); yticks([0:5:20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_c0.fig'); close all;

System          = 'Bi_DSP';
parameters      = [1,0.01,0.02,40,0.001,2.42*0.5,sqrt(2)/2,0.5,0.1,10,1,10,10,1,1,1,1,1,1,60,75,3];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		      = 2;
flag            = 0;

fig4 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream Signal Regulation of DSP (common enzymes) (N1)','FontSize',16);
subtitle('Interaction of the biphasic dose responses to present multiphasic response','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
xlim([0 20]); xticks([0:5:20]); ylim([0 20]); yticks([0:5:20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_c.fig'); close all;

%% Panel C
% Incoherent Feedforward in DSP - Inducing multiphasic response
System          = 'Inch_DSP';
parameters      = [0,0.001,0.02,0.001,40,0.1,0.001,0.4,3,0.1,10,1,10,10,1,1,1,1,1,1,60,75,3];
initial         = [0,0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig50 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 30]); xticks([0:6:30]); ylim([0 16]); yticks([0:4:16]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_a0.fig'); close all;

System          = 'Inch_DSP';
parameters      = [1,0.001,0.02,0.001,40,0.1,0.001,0.4,3,0.1,10,1,10,10,1,1,1,1,1,1,60,75,3];
initial         = [0,0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 1;

fig5 = Main(System,parameters,initial,ap,ip,flag);
title('Incoherent Feedforward Regulation of DSP (common enzymes) (N2)','FontSize',16);
subtitle('Introduction of multiphasic dose response','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
xlim([0 30]); xticks([0:6:30]);  ylim([0 16]); yticks([0:4:16])
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_a.fig'); close all;

% Incoherent Feedforward in DSP - Removal of biphasic by interaction
System          = 'Inch_DSP';
parameters      = [0,0.001,0.2,0.001,30,4,0.001,20,0.5,0.1,10,1,10,10,1,1,1,1,1,1,100,75,2];
initial         = [0,0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig60 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 20]); xticks([0:5:20]); ylim([0 60]); yticks([0:15:60]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_b0.fig'); close all;

System          = 'Inch_DSP';
parameters      = [1,0.001,0.2,0.001,30,4,0.001,20,0.5,0.1,10,1,10,10,1,1,1,1,1,1,100,75,2];
initial         = [0,0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig6 = Main(System,parameters,initial,ap,ip,flag);
title('Incoherent Feedforward Regulation of DSP (common enzymes) (N2)','FontSize',16);
subtitle('Removal of biphasic dose response and introduction of new behavior','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
xlim([0 20]); xticks([0:5:20]); ylim([0 120]); yticks([0:30:120]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_b.fig'); close all;

% % Incoherent Feedforward in DSP - Introduction of new behavior
% System          = 'Inch_DSP';
% parameters      = [0,0.01,1,0.01,8,0.25,0.01,4,0.1,1,1,1,40,10,1,1,1,1,1,1,40,1,1];
% initial         = [0,0,0,0,0,0,0,0];
% ap              = [2];
% ip		        = 2;
% flag            = 0;

% fig60 = Main(System,parameters,initial,ap,ip,flag);
% xlim([0 20]); xticks([0:5:20]); ylim([0 60]); yticks([0:15:60]);
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_c0.fig'); close all;

% System          = 'Inch_DSP';
% parameters      = [1,0.01,1,0.01,8,0.25,0.01,4,0.1,1,1,1,40,10,1,1,1,1,1,1,40,1,1];
% initial         = [0,0,0,0,0,0,0,0];
% ap              = [2];
% ip		        = 2;
% flag            = 0;

% fig6 = Main(System,parameters,initial,ap,ip,flag);
% title('Incoherent feedforward regulation of DSP (common enzymes) (N2)','FontSize',16);
% subtitle('Removal of biphasic dose response and introduction of new behavior','Interpreter','latex');
% a = ylabel('$A_{pp}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('S','Interpreter','latex'); a.FontSize=18;
% xlim([0 20]); xticks([0:5:20]); ylim([0 120]); yticks([0:30:120]);
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_c.fig'); close all;

%% Panel D
% Incoherent feedfoward network - biphasic in interaction (Introduction of multiphasic behavior)
System          = 'Net_Bi_Inc';
parameters      = [0,2.42*2,sqrt(2)/2,1e-2,1,1,0.1,1,1,1,0.1,4,2,2,0.1,1,2,4];
initial         = [0,0,0];
ap              = [4];
ip		        = 3;
flag            = 0;

fig70 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 20]); xticks([0:5:20]); ylim([0 4]); yticks([0:1:4]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_a0.fig'); close all;

System          = 'Net_Bi_Inc';
parameters      = [1,2.42*2,sqrt(2)/2,1e-2,1,1,0.1,1,1,1,0.1,4,2,2,0.1,1,2,4];
initial         = [0,0,0];
ap              = [4];
ip		        = 3;
flag            = 0;

fig7 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic Interaction within iFFW Network Motif (N3)','FontSize',16);
subtitle('Introduction of multiphasic dose response','Interpreter','latex');
a = ylabel('$\bf{R_s}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
xlim([0 20]); xticks([0:5:20]); ylim([0 2]); yticks([0:0.5:2]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_a.fig'); close all;

%% Incoherent feedfoward network - biphasic in interaction (removal of behavior)
% What the F happenend here - check this immediately
% System          = 'Net_Bi_Inc';
% % parameters      = [0,2.25*6,sqrt(2)/2,1e-2,2,1,5,4,2,1,0.1,1,5,6,0.1,2,2,3];
% parameters      = [0,2.42*3,sqrt(2)/1,1e-2,1,1,0.1,0.1,2,1,0.1,1,5,3,1,3,3,4];
% initial         = [0,0,0];
% ap              = [4];
% ip		        = 3;
% flag            = 0;
% 
% fig80 = Main(System,parameters,initial,ap,ip,flag);
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_b0.fig'); close all;
% 
% System          = 'Net_Bi_Inc';
% % parameters      = [1,2.25*6,sqrt(2)/2,1e-2,2,1,5,4,2,1,0.1,1,5,6,0.1,2,2,3];
% parameters      = [1,2.42*3,sqrt(2)/0.2,1e-2,1,1,0.1,0.1,2,1,0.1,1,5,3,1,3,0.2,4];
% initial         = [0,0,0];
% ap              = [4];
% ip		        = 3;
% flag            = 0;
% 
% fig8 = Main(System,parameters,initial,ap,ip,flag);
% title('Biphasic Interaction within iFFW Network Motif (N3)','FontSize',16);
% subtitle('Destructino of biphasic dose response','Interpreter','latex');
% a = ylabel('$\bf{R_s}$','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_b.fig'); close all;

%% Panel E
% Positive feedback network - perturbation of bistable response
System          = 'Net_Bi_PFB_Cl';
parameters      = [0,0.001,2.42*0.1,sqrt(2)/3,0.1,0.4,10,2,2,1,1,0.1,3,10];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig90 = Main(System,parameters,initial,ap,ip,flag);
ylim([0 6]); yticks([0:1.5:6]); xlim([0 1]); xticks([0:0.25:1]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3E_a0.fig'); close all;

System          = 'Net_Bi_PFB_Cl';
parameters      = [1,0.001,2.42*0.1,sqrt(2)/3,0.1,0.4,10,2,2,1,1,0.1,3,10];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig9 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic Interaction within PFB Network Motif (N4)','FontSize',16);
subtitle('Removal of multistability','Interpreter','latex');
a = ylabel('\bf{R}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
ylim([0 8]); yticks([0:2:8]); xlim([0 4]); xticks([0:1:4]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3E_a.fig'); close all;

%% Panel F
% Negative feedback network - Introduction of bistability
System          = 'Net_Bi_NFB_Cl';
parameters      = [0,0.01,13.02663672*0.1,1,0.1,2,0.1,0.1,0.1,0.5,50,5];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 1;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 4]); ylim([0 4]); xticks([0:1:4]); yticks([0:1:4]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3F_a0.fig'); close all;

System          = 'Net_Bi_NFB_Cl';
parameters      = [1,0.01,13.02663672*0.1,1,0.1,2,0.1,0.1,0.1,0.5,50,5];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 4]); ylim([0 4]); xticks([0:1:4]); yticks([0:1:4]);
title('Biphasic Interaction within NFB Network Motif (N5)','FontSize',16);
subtitle('Introduction of multistable response','Interpreter','latex');
a = ylabel('\bf{R}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{S}','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3F_a.fig'); close all;

clc
toc
