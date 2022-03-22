tic

clear 
clc
addpath(genpath('../../matcont6p11/'))
close all

%% Panel A
% PPI system (Full model): Enzyme Biphasic response
System          = 'PPI_Full';
parameters      = [1,1,1,20,1,1,1,1,30,0.01,1];
initial         = [0,0,0,0];
ap              = [10];
ip              = 1;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('Protein-Protein Interaction model (M1)','FontSize',16);
subtitle('Enzyme biphasic response - $A_{p}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{p}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('fig2A.fig'); close all;

%% Panel B
% DSP CC: Substrate and Enzyme biphasic response
System          = 'DSP_ComK_ComP';
parameters      = [0.1,1,1,1,1,1,1,1,1,1,1,1,0.01,2.5,1];
initial         = [0,30,0,0,0,0];
ap              = [13];
ip              = 2;
flag            = 0;

fig2 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common kinase and common phosphatase (M2)','FontSize',16);
subtitle('Substrate biphasic response - $A_{pp}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('fig2B_a.fig'); close all;

System          = 'DSP_ComK_ComP';
parameters      = [3,1,5,1,1,1,1,1,1,1,1,1,30,0.01,10];
initial         = [0,0,0,0,0,0];
ap              = [14];
ip              = 2;
flag            = 0;

fig3 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common kinase and common phosphatase (M2)','FontSize',16);
subtitle('Enzyme biphasic response - $A_{pp}$ vs $K_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{K_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('fig2B_b.fig'); close all;

%% Panel C
% DSP CD: Substrate biphasic response
System          = 'DSP_ComK_SepP';
parameters      = [3.5,50,100,100,20,75,50,30,1,1,1,1,0.01,6,1,1];
initial         = [0,0,0,0,0,0];
ap              = [13];
ip              = 2;
flag            = 0;

fig4 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common kinase and separate phosphatase (M3)','FontSize',16);
subtitle('Substrate biphasic response - $A_{pp}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('fig2C.fig'); close all;

%% Panel D
% DSP DC: Enzyme biphasic response
System          = 'DSP_SepK_ComP';
parameters      = [160,100,75,25,250,100,100,75,1,1,1,1,50,18,0.01,36];
initial         = [0,0,0,0,0,0];
ap              = [15];
ip              = 2;
flag            = 1;

fig5 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Separate kinase and common phosphatase (M4)','FontSize',16);
subtitle('Enzyme biphasic response - $A_{pp}$ vs $K2_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{K2_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('fig2D.fig'); close all;

%% Panel E
% Two Tier Cascaded network: Substrate biphasic response
System          = 'Two_Tier_Cascade';
parameters      = [80,35,600,400,1,1,5,60,40,25,1,1,45,0.01,10,16];
initial         = [0,0,0,0,0,0];
ap              = [14];
ip              = 2;
flag            = 0;

fig6 = Main(System,parameters,initial,ap,ip,flag)
title('Cascaded enzymatic network (M6)','FontSize',16);
subtitle('Substrate biphasic response - $B_p$ vs $B_{Total}$','Interpreter','latex');
a = ylabel('$\bf{B_p}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{B_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('fig2E.fig'); close all;

%% Panel F
% Coupled Covalent modification network: Substrate biphasic response
System          = 'Two_Cov_Cyc';
parameters      = [1,1,1,1,1,1,1,2,1,1,1,1,20,0.01,5,4];
initial         = [0,0,0,0,0,0];
ap              = [14];
ip              = 4;
flag            = 0;

fig7 = Main(System,parameters,initial,ap,ip,flag);
title('Coupled Covalent modifications (M7)','FontSize',16);
subtitle('Substrate biphasic response - $B_p$ vs $B_{Total}$','Interpreter','latex');
a = ylabel('$\bf{B_p}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{B_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('fig2F.fig'); close all;

clc
toc