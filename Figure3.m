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
parameters      = [1,0.01,1,0.01,1,1.5,0.9,4,1,1,1,1,1,20,5,3];
initial         = [0,0,0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream Regulation of Covalent Modification Cycle','FontSize',16);
subtitle('Biphasic response with elevated regimes of Homeostasis','Interpreter','latex');
a = ylabel('$A_p$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
xlim([0 15]); xticks([0 2.5 5 7.5 10 12.5 15]);
ylim([0 20]); yticks([0 5 10 15 20]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel B
% Upstream regulation of DSP (commmon enzymes) - Presence of biphasic
System          = 'Bi_DSP';
parameters      = [1,0.01,1,1,0.01,1,0.5,1,2,1,1,1,1,1,1,1,1,1,1,20,4,3];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig2 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream regulation of DSP (common enzymes)','FontSize',16);
subtitle('Introduction of biphasic response','Interpreter','latex');
a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_a.fig'); close all;

% Upstream regulation of DSP (commmon enzymes) - Multiphasic and mutlistability (from biphasic)
System          = 'Bi_DSP';
parameters      = [0,0.01,0.1,1,0.01,1,0.2,1,5,1,8,1,1,1,1,1,1,1,1,20,5,2];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig3 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream regulation of DSP (common enzymes)','FontSize',16);
subtitle('Introduction of multiphasic and bistable response','Interpreter','latex');
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
% Incoherent Feedforward in DSP - interaction of two biphasic responses
System          = 'Inch_DSP';
parameters      = [0,0.001,0.02,0.001,40,0.1,0.001,0.4,0.5,0.1,10,1,10,10,1,1,1,1,1,1,60,75,3];
initial         = [0,0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig5 = Main(System,parameters,initial,ap,ip,flag);
title('Interaction of biphasic from network and node','FontSize',16);
subtitle('Incoherent feedforward and DSP (common enzymes)','Interpreter','latex');
a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_a.fig'); close all;

% Incoherent Feedforward in DSP - Removal of biphasic by interaction
System          = 'Inch_DSP';
parameters      = [1,0.001,0.2,0.001,40,4,0.001,20,0.5,0.1,10,1,10,10,1,1,1,1,1,1,60,75,3];
initial         = [0,0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig6 = Main(System,parameters,initial,ap,ip,flag);
title('Interaction of biphasic from network and node','FontSize',16);
subtitle('Incoherent feedforward and DSP (common enzymes)','Interpreter','latex');
a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3C_b.fig'); close all;

%% Panel D
% Incoherent feedfoward network - biphasic in interaction (removal of behavior)
System          = 'Net_Bi_Inc';
parameters      = [1,3,0.5,1e-2,1,0.1,0.05,0.05,4,1,0.1,0.5,1,1,0.01,0.1,0.05,0.05,3,3,5];
initial         = [0,0,0];
ap              = [4];
ip		        = 3;
flag            = 0;

fig7 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interaction in network motif interaction','FontSize',16);
subtitle('Removal of Biphasic response from incoherent feedforward','Interpreter','latex');
a = ylabel('$R_s$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_a.fig'); close all;

% Incoherent feedfoward network - biphasic in interaction (removal of behavior)
System          = 'Net_Bi_Inc';
parameters      = [1,3,0.5,1e-2,1,0.1,0.05,0.05,4,1,0.1,0.5,1,1,0.01,0.1,0.05,0.05,3,3,5];
initial         = [0,0,0];
ap              = [4];
ip		        = 3;
flag            = 0;

fig8 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interaction in network motif interaction','FontSize',16);
subtitle('Introduction of Multiphasic response from incoherent feedforward','Interpreter','latex');
a = ylabel('$R_s$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3D_b.fig'); close all;

%% Panel E
% Positive feedback network - perturbation of bistable response
System          = 'Net_Bi_PFB';
parameters      = [0,0.01,0.1,5,0.01,0.5,1,1,1,0.5,0.1,3];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig9 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interaction in network motif interaction','FontSize',16);
subtitle('Perturbation of multistability (PFB)','Interpreter','latex');
a = ylabel('R','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3E_a.fig'); close all;

%% Panel F
% Negative feedback network - perturbation of homeostatic response
System          = 'Net_Bi_NFB';
parameters      = [1,0.01,0.5,0.8,0.1,0.1,0.001,0.1,2,0.1,0.01,3];
initial         = [0,0];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
xlim([0 80]); ylim([0 40]);
xticks('auto'); yticks('auto');
title('Biphasic interaction in network motif interaction','FontSize',16);
subtitle('Perturbation of homeostatic response (NFB)','Interpreter','latex');
a = ylabel('R','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3F_a.fig'); close all;

clc
toc