tic

clear 
clc
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures'))
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/matcont6p11'))
mkdir('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3');
close all

%% Panel A
% Incoherent Feedforward - Removal of biphasic response
System          = '';
parameters      = []];
initial         = [];
ap              = [];
ip		        = ;
flag            = ;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel B
% Incoherent Feedforward - Introduction of multiphasic response
System          = '';
parameters      = []];
initial         = [];
ap              = [];
ip		        = ;
flag            = ;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel C
% Positive Feedback - Removal of multistability
System          = '';
parameters      = []];
initial         = [];
ap              = [];
ip		        = ;
flag            = ;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel D
% Negative Feedback - Removal of Homeostatic response
System          = '';
parameters      = []];
initial         = [];
ap              = [];
ip		        = ;
flag            = ;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel E
% Upstream reg of Covalent modification network (Extended biphasic)
System          = '';
parameters      = []];
initial         = [];
ap              = [];
ip		        = ;
flag            = ;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel F
% Upstream reg of DSP CC (biphasic response)
System          = '';
parameters      = []];
initial         = [];
ap              = [];
ip		        = ;
flag            = ;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel G
% Upstream reg of DSP CC (multistability)
System          = '';
parameters      = []];
initial         = [];
ap              = [];
ip		        = ;
flag            = ;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel H
% Upstream reg of DSP CC (Oscillation)
System          = '';
parameters      = []];
initial         = [];
ap              = [];
ip		        = ;
flag            = ;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

%% Panel I
% Interaction of two different sources of biphasic response
System          = '';
parameters      = []];
initial         = [];
ap              = [];
ip		        = ;
flag            = ;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',90,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F3/Fig3A.fig'); close all;

clc
toc

