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

% Upstream regulation of DSP (commmon enzymes) - Multiphasic (from biphasic)
System          = 'Bi_DSP';
parameters      = [1,0.01,0.1,1,0.01,1,0.2,1,5,1,8,1,1,1,1,1,1,1,1,20,5,2];
initial         = [0,0,0,0,0,0,0];
ap              = [2];
ip		        = 2;
flag            = 0;

fig2 = Main(System,parameters,initial,ap,ip,flag);
title('Upstream regulation of DSP (common enzymes)','FontSize',16);
subtitle('Introduction of multiphasic response','Interpreter','latex');
a = ylabel('$A_{pp}$','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('S','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3B_b.fig'); close all;

% %% Panel C
% % Positive Feedback - Removal of multistability
% System          = '';
% parameters      = []];
% initial         = [];
% ap              = [];
% ip		        = ;
% flag            = ;

% fig1 = Main(System,parameters,initial,ap,ip,flag);
% title('','FontSize',16);
% subtitle('','Interpreter','latex');
% a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

% %% Panel D
% % Negative Feedback - Removal of Homeostatic response
% System          = '';
% parameters      = []];
% initial         = [];
% ap              = [];
% ip		        = ;
% flag            = ;

% fig1 = Main(System,parameters,initial,ap,ip,flag);
% title('','FontSize',16);
% subtitle('','Interpreter','latex');
% a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

% %% Panel E
% % Upstream reg of Covalent modification network (Extended biphasic)
% System          = '';
% parameters      = []];
% initial         = [];
% ap              = [];
% ip		        = ;
% flag            = ;

% fig1 = Main(System,parameters,initial,ap,ip,flag);
% title('','FontSize',16);
% subtitle('','Interpreter','latex');
% a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

% %% Panel F
% % Upstream reg of DSP CC (biphasic response)
% System          = '';
% parameters      = []];
% initial         = [];
% ap              = [];
% ip		        = ;
% flag            = ;

% fig1 = Main(System,parameters,initial,ap,ip,flag);
% title('','FontSize',16);
% subtitle('','Interpreter','latex');
% a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

% %% Panel G
% % Upstream reg of DSP CC (multistability)
% System          = '';
% parameters      = []];
% initial         = [];
% ap              = [];
% ip		        = ;
% flag            = ;

% fig1 = Main(System,parameters,initial,ap,ip,flag);
% title('','FontSize',16);
% subtitle('','Interpreter','latex');
% a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

% %% Panel H
% % Upstream reg of DSP CC (Oscillation)
% System          = '';
% parameters      = []];
% initial         = [];
% ap              = [];
% ip		        = ;
% flag            = ;

% fig1 = Main(System,parameters,initial,ap,ip,flag);
% title('','FontSize',16);
% subtitle('','Interpreter','latex');
% a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

% %% Panel I
% % Interaction of two different sources of biphasic response
% System          = '';
% parameters      = []];
% initial         = [];
% ap              = [];
% ip		        = ;
% flag            = ;

% fig1 = Main(System,parameters,initial,ap,ip,flag);
% title('','FontSize',16);
% subtitle('','Interpreter','latex');
% a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
% a = xlabel('','Interpreter','latex'); a.FontSize=18;
% savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

% clc
% toc

