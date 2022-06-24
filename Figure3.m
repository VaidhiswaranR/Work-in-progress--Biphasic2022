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
parameters      = [0,0.01,1,0.01,1,2.25*4,sqrt(2)/20,4,1,1,1,1,1,20,5,3];
% parameters      = [0,0.01,1,0.01,1,1.5,0.9,4,1,1,1,1,1,20,5,3];
% b2 = sqrt(2)/A0
% b1 = 2.25*k1
initial         = [0,0,0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 200]); xticks([0 50 100 150 200]);
ylim([0 20]); yticks([0 5 10 15 20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A0.fig'); close all;

System          = 'Bi_Cov';
parameters      = [1,0.01,1,0.01,1,2.25*4,sqrt(2)/20,4,1,1,1,1,1,20,5,3];
% parameters      = [1,0.01,1,0.01,1,1.5,0.9,4,1,1,1,1,1,20,5,3];
initial         = [0,0,0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream Signal Regulation of Covalent Modification Cycle (N0)','FontSize',16);
subtitle('Biphasic response with signal','Interpreter','latex');
a = ylabel('$A_p$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
xlim([0 200]); xticks([0 50 100 150 200]);
ylim([0 20]); yticks([0 5 10 15 20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel B
% Upstream regulation of DSP (commmon enzymes) - Presence of biphasic
System          = 'Bi_DSP';
parameters      = [0,0.01,1,1,0.01,1,0.5,1,2,1,1,1,1,1,1,1,1,1,1,20,4,3];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig20 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 25]); xticks('auto'); ylim([0 20]); yticks([0:5:20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_a0.fig'); close all;

System          = 'Bi_DSP';
parameters      = [1,0.01,1,1,0.01,1,0.5,1,2,1,1,1,1,1,1,1,1,1,1,20,4,3];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig2 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream Signal Regulation of DSP (common enzymes) (N1)','FontSize',16);
subtitle('Prolonged homeostasis and biphasic response with signal','Interpreter','latex');
a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
xlim([0 25]); xticks('auto'); ylim([0 20]); yticks([0:5:20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_a.fig'); close all;

% Upstream regulation of DSP (commmon enzymes) - Multiphasic and mutlistability (from biphasic)
System          = 'Bi_DSP';
parameters      = [0,0.01,0.1,1,0.01,1,0.2,1,5,1,8,1,1,1,1,1,1,1,1,20,5,2];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig30 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 4]); xticks('auto');
text(1.6,3,'LP','HorizontalAlignment','left')
text(1.2,6.5,'LP','HorizontalAlignment','left')
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_b0.fig'); close all;

System          = 'Bi_DSP';
parameters      = [1,0.01,0.1,1,0.01,1,0.2,1,5,1,8,1,1,1,1,1,1,1,1,20,5,2];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig3 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream Signal Regulation of DSP (common enzymes) (N1)','FontSize',16);
subtitle('Multiphasic and bistable response','Interpreter','latex');
a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
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
% a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('S','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_c.fig'); close all;

%% Panel C
% Incoherent Feedforward in DSP - Inducing multiphasic response
System          = 'Inch_DSP';
parameters      = [0,0.001,0.02,0.001,40,0.1,0.001,0.4,0.5,0.1,10,1,10,10,1,1,1,1,1,1,60,75,3];
initial         = [0,0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig50 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 80]); xticks([0:20:80]); ylim([0 16]); yticks([0:4:16]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_a0.fig'); close all;

System          = 'Inch_DSP';
parameters      = [1,0.001,0.02,0.001,40,0.1,0.001,0.4,0.5,0.1,10,1,10,10,1,1,1,1,1,1,60,75,3];
initial         = [0,0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 1;

fig5 = Main(System,parameters,initial,ap,ip,flag);
title('Incoherent feedforward regulation of DSP (common enzymes) (N2)','FontSize',16);
subtitle('Induction multiphasic dose response','Interpreter','latex');
a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
xlim([0 40]); xticks([0:10:40]); 
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
title('Incoherent feedforward regulation of DSP (common enzymes) (N2)','FontSize',16);
subtitle('Removal of biphasic dose response and introduction of new behavior','Interpreter','latex');
a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
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
% a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('S','Interpreter','latex'); a.FontSize=18;
% xlim([0 20]); xticks([0:5:20]); ylim([0 120]); yticks([0:30:120]);
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_c.fig'); close all;

%% Panel D
% Incoherent feedfoward network - biphasic in interaction (removal of behavior)
System          = 'Net_Bi_Inc';
parameters      = [0,3,0.5,1e-2,1,0.1,0.05,0.05,4,1,0.1,0.5,1,1,0.01,0.1,0.05,0.05,3,3,5];
initial         = [0,0,0];
ap              = [4];
ip		        = 3;
flag            = 0;

fig70 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 80]); xticks([0:20:80]); 
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_a0.fig'); close all;

System          = 'Net_Bi_Inc';
parameters      = [1,3,0.5,1e-2,1,0.1,0.05,0.05,4,1,0.1,0.5,1,1,0.01,0.1,0.05,0.05,3,3,5];
initial         = [0,0,0];
ap              = [4];
ip		        = 3;
flag            = 0;

fig7 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interaction within iFFW network motif (N3)','FontSize',16);
subtitle('Removal of Biphasic dose response','Interpreter','latex');
a = ylabel('$R_s$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
xlim([0 80]); xticks([0:20:80]); 
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_a.fig'); close all;


% Incoherent feedfoward network - biphasic in interaction (removal of behavior)
%%%%% THIS NEEDS WORK - PLEASE LOOK INTO IT
System          = 'Net_Bi_Inc';
parameters      = [0,3,0.5,1e-2,1,0.1,0.05,0.05,4,1,0.1,0.5,1,1,0.01,0.1,0.05,0.05,3,3,5];
initial         = [0,0,0];
ap              = [4];
ip		        = 3;
flag            = 0;

fig80 = Main(System,parameters,initial,ap,ip,flag);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_b0.fig'); close all;

System          = 'Net_Bi_Inc';
parameters      = [1,3,0.4,1e-2,1,0.1,0.05,0.05,4,1,0.1,0.5,1,1,0.01,0.1,0.05,0.05,3,3,5];
initial         = [0,0,0];
ap              = [4];
ip		        = 3;
flag            = 0;

fig8 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interaction within iFFW network motif (N3)','FontSize',16);
subtitle('Introduction of Multiphasic dose response','Interpreter','latex');
a = ylabel('$R_s$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_b.fig'); close all;

%% Panel E
% Positive feedback network - perturbation of bistable response
System          = 'Net_Bi_PFB_Cl';
parameters      = [0,0.01,1,0.1,0.5,1,0.1,2,1,0.1,1,0.05,4,15];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig90 = Main(System,parameters,initial,ap,ip,flag);
ylim([0 10]); yticks([0:2:10]); xlim([0 2]); xticks([0:0.4:2]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3E_a0.fig'); close all;

System          = 'Net_Bi_PFB_Cl';
parameters      = [1,0.01,1,0.1,0.5,1,0.1,2,1,0.1,1,0.05,4,15];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig9 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interaction within PFB network motif (N4)','FontSize',16);
subtitle('Removal of multistability','Interpreter','latex');
a = ylabel('R','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
ylim([0 10]); yticks([0:2:10]); xlim([0 2]); xticks([0:0.4:2]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3E_a.fig'); close all;

%% Panel F
% Negative feedback network - perturbation of homeostatic response
System          = 'Net_Bi_NFB_Cl';
parameters      = [0,0.01,0.5,0.8,0.1,0.1,0.01,0.1,0.1,0.1,0.01,3,5];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 80]); ylim([0 40]); xticks('auto'); yticks('auto');
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3F_a0.fig'); close all;

System          = 'Net_Bi_NFB_Cl';
parameters      = [0,0.01,0.5,0.8,0.1,0.1,0.01,0.1,0.1,0.1,0.01,3];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 80]); ylim([0 40]); xticks('auto'); yticks('auto');
title('Biphasic interaction within NFB network motif (N5)','FontSize',16);
subtitle('Perturbation of homeostatic response','Interpreter','latex');
a = ylabel('R','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3F_a.fig'); close all;

clc
toc
