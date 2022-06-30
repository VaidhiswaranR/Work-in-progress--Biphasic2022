tic

clear 
clc
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures'))
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/matcont6p11'))
mkdir('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS1');
close all


%% Panel A 
% DSP CC - Substrate biphasic (combination of multistability and biphasic)
System          = 'DSP_ComK_ComP';
parameters      = [0.1,1,1,1,10,1,0.1,1,1,1,1,1,0.01,2.5,1];
initial         = [0,0,0,0,0,0];
ap              = [13];
ip              = 2;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common kinase and common phosphatase (M2)','FontSize',16);
subtitle('Substrate biphasic response - $A_{pp}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS1/FigS1A.fig'); close all;

%% Panel B
% DSP CC - Enzyme biphasic (combination of multistability and biphasic)
System          = 'DSP_ComK_ComP';
parameters      = [100,6,5,20,0.5,30,100,750,1,1,1,1,65,0.01,30];
initial         = [0,0,0,0,0,0];
ap              = [14];
ip              = 2;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common kinase and common phosphatase (M2)','FontSize',16);
subtitle('Enzyme biphasic response - $A_{pp}$ vs $K_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{K_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS1/FigS1B_a.fig'); close all;

System          = 'DSP_ComK_ComP';
parameters      = [100,6,5,20,0.5,30,100,750,1,1,1,1,80,0.01,30];
initial         = [0,0,0,0,0,0];
ap              = [14];
ip              = 2;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common kinase and common phosphatase (M2)','FontSize',16);
subtitle('Presence of Multistability','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{K_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS1/FigS1B_b.fig'); close all;

%% Panel C
% DSP CD - Enzyme Biphasic (combination of multistability and biphasic)
System          = 'DSP_ComK_SepP';
parameters      = [0.1,1,1,1,10,1,0.1,1,1,1,1,1,0.01,5,1,1];
initial         = [0,0,0,0,0,0];
ap              = [13];
ip              = 2;
flag            = 0;

fig3 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common kinase and separate phosphatase (M3)','FontSize',16);
subtitle('Substrate biphasic response - $A_{pp}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS1/FigS1C.fig'); close all;

%% Panel D
% DSP DC - Enzyme biphasic (combination of multistability and biphasic)
System          = 'DSP_SepK_ComP';
parameters      = [30,5,50,1,25,10,10,7,1,1,1,1,200,0.1,0.01,6];
initial         = [0,0,0,0,0,0];
ap              = [15];
ip              = 2;
flag            = 0;

fig5 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Separate kinase and common phosphatase (M4)','FontSize',16);
subtitle('Enzyme biphasic response - $A_{pp}$ vs $K2_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{K2_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS1/FigS1D.fig'); close all;

%% Panel E
% Tiered cascaded system - Substrate biphasic (combination of multistability and biphasic)
System          = 'Two_Tier_Cascade';
parameters      = [80,35,600,400,1,1,5,60,40,25,1,1,45,0.01,10,16];
initial         = [0,0,0,0,0,0];
ap              = [14];
ip              = 2;
flag            = 1;

fig6 = Main(System,parameters,initial,ap,ip,flag)
title('Two tier cascaded enzymatic network (M6)','FontSize',16);
subtitle('Substrate biphasic response - $B_p$ vs $B_{Total}$','Interpreter','latex');
a = ylabel('$\bf{B_p}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{B_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS1/FigS1E.fig'); close all;

toc