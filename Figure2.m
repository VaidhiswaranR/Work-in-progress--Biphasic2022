tic

clear 
clc
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures'))
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/matcont6p11'))
mkdir('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F2');
close all

%% Panel A
% PPI system (Full model): Enzyme biphasic dose response
System          = 'PPI_Full';
parameters      = [1,1,1,20,1,1,1,1,30,0.01,1];
initial         = [0,0,0,0];
ap              = [10];
ip              = 1;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('Protein-Protein Interaction Model (M1)','FontSize',16);
subtitle('Enzyme biphasic dose response - $A_{p}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{p}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
xlim([0 80]); xticks([0:20:80]); ylim([0 8]); yticks([0:2:8]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F2/Fig2A.fig'); close all;

%% Panel B
% DSP CC: Substrate and Enzyme biphasic dose response
System          = 'DSP_ComK_ComP';
parameters      = [0.1,1,1,1,1,1,1,1,1,1,1,1,0.01,2.5,1];
initial         = [0,0,0,0,0,0];
ap              = [13];
ip              = 2;
flag            = 0;

fig2 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common Kinase and Common Phosphatase (M2)','FontSize',16);
subtitle('Substrate biphasic dose response - $A_{pp}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
xlim([0 40]); xticks([0:10:40]); ylim([0 1]); yticks([0:0.25:1]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F2/Fig2B_a.fig'); close all;

System          = 'DSP_ComK_ComP';
parameters      = [2,0.1,10,0.1,1,1,1,1,1,1,1,1,30,0.01,4];
initial         = [0,0,0,0,0,0];
ap              = [14];
ip              = 2;
flag            = 0;

fig3 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common Kinase and Common Phosphatase (M2)','FontSize',16);
subtitle('Enzyme biphasic dose response - $A_{pp}$ vs $K_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{K_{Total}}$','Interpreter','latex'); a.FontSize=18;
xlim([0 80]); xticks([0:20:80]); ylim([0 4]); yticks([0:1:4]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F2/Fig2B_b.fig'); close all;

%% Panel C
% DSP CD: Substrate biphasic dose response
System          = 'DSP_ComK_SepP';
parameters      = [3.5,50,100,100,20,75,50,30,1,1,1,1,0.01,6,1,1];
initial         = [0,0,0,0,0,0];
ap              = [13];
ip              = 2;
flag            = 0;

fig4 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Common Kinase and Separate Phosphatase (M3)','FontSize',16);
subtitle('Substrate biphasic dose response - $A_{pp}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
xlim([0 40]); xticks([0:10:40]); ylim([0 4]); yticks([0:1:4]);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F2/Fig2C.fig'); close all;

%% Panel D
% DSP DC: Enzyme biphasic dose response
System          = 'DSP_SepK_ComP';
parameters      = [200,40,200,5,250,100,100,75,1,1,1,1,50,18,0.01,30];
initial         = [0,0,0,0,0,0];
ap              = [15];
ip              = 2;
flag            = 1;

fig5 = Main(System,parameters,initial,ap,ip,flag);
title('DSP: Separate Kinase and Common Phosphatase (M4)','FontSize',16);
subtitle('Enzyme biphasic dose response - $A_{pp}$ vs $K2_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{K2_{Total}}$','Interpreter','latex'); a.FontSize=18;
xlim([0 60]); xticks([0:15:60]); ylim([0 8]); yticks([0:2:8])
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F2/Fig2D.fig'); close all;

%% Panel E
% Two Tier Cascaded network: Substrate biphasic dose response
System          = 'Two_Tier_Cascade';
parameters      = [80,35,200,200,1,1,5,60,40,25,1,1,45,0.01,10,16];
initial         = [0,0,0,0,0,0];
ap              = [14];
ip              = 2;
flag            = 1;

fig6 = Main(System,parameters,initial,ap,ip,flag)
title('Cascaded Enzymatic Network (M6)','FontSize',16);
subtitle('Substrate biphasic dose response - $B_p$ vs $B_{Total}$','Interpreter','latex');
a = ylabel('$\bf{B_p}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{B_{Total}}$','Interpreter','latex'); a.FontSize=18;
xlim([0 80]); xticks([0:20:80]); ylim([0 16]); yticks([0:4:16])
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F2/Fig2E.fig'); close all;

%% Panel F
% Coupled Covalent modification network: Substrate biphasic dose response
System          = 'Two_Cov_Cyc';
parameters      = [4,0.1,0.9,8,1,1,0.1,3,1,1,1,1,8,0.01,4,3];
initial         = [0,0,0,0,0,0];
ap              = [14];
ip              = 4;
flag            = 0;

fig7 = Main(System,parameters,initial,ap,ip,flag);
title('Coupled Covalent Modifications (M7)','FontSize',16);
subtitle('Substrate biphasic dose response - $B_p$ vs $B_{Total}$','Interpreter','latex');
a = ylabel('$\bf{B_p}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{B_{Total}}$','Interpreter','latex'); a.FontSize=18;
xlim([0 120]); xticks([0:30:120]); ylim([0 8]); yticks([0:2:8]); 
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/F2/Fig2F.fig'); close all;

clc
toc