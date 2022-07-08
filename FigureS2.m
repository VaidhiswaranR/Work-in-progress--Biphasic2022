tic 

clear
clc

addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures'))
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/matcont6p11'))
mkdir('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS2');
close all


%% Panel A 
% Susbtrate biphasic response 
System          = 'S1_Random_DD';
parameters      = [1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.01,2,2,3,3];
initial         = [0,0,0,0,0,0,0,0,0,0,0];
ap              = [25];
ip              = 3;
flag            = 0;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('Random DSP: Common Kinase and Common Phosphatase','FontSize',16);
subtitle('Substrate biphasic dose response - $A_{11}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{11}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
xlim([0 200]); xticks([0:50:200]); 
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS2/FigS2A.fig'); close all;


%% Panel B 
% Enzyme biphasic response 
System          = 'S1_Random_DD';
parameters      = [3,1,0.1,1,0.1,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,50,2,0.01,12,12];
initial         = [0,0,0,0,0,0,0,0,0,0,0];
ap              = [27];
ip              = 3;
flag            = 1;

fig1 = Main(System,parameters,initial,ap,ip,flag);
title('Random DSP: Common Kinase and Common Phosphatase','FontSize',16);
subtitle('Enzyme biphasic dose response - $A_{11}$ vs $K2_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{K2_{Total}}$','Interpreter','latex'); a.FontSize=18;
xlim([0 280]); xticks([0:70:280]); 
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS2/FigS2B.fig'); close all;

toc
