tic

clear 
clc
close all

%% Panel A
% PPI system (Full model): Enzyme Biphasic response
System          = 'PPI_Full';
parameters      = [1,1,1,20,1,1,1,1,30,0.01,1];
initial         = [0,0,0,0];
ap              = [10];
ip              = 1;

fig1 = Main(System,parameters,initial,ap,ip);
title('Protein-Protein Interaction model (M1)','FontSize',16);
subtitle('Enzyme biphasic response - $A_{p}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{p}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('fig2A.fig'); close all;

%% Panel B
% DSP CC: Enzyme biphasic response
System          = 'DSP_ComK_ComP';
parameters      = [0.1,1,1,1,1,1,1,1,1,1,1,1,0.01,2.5,1];
initial         = [0,30,0,0,0,0];
ap              = [13];
ip              = 2;

fig3 = Main(System,parameters,initial,ap,ip);
title('DSP: Common kinase and common phosphatase (M2)','FontSize',16);
subtitle('Substrate biphasic response - $A_{pp}$ vs $A_{Total}$','Interpreter','latex');
a = ylabel('$\bf{A_{pp}}$','Interpreter','latex','rotation',0,'VerticalAlignment','middle','HorizontalAlignment','right'); a.FontSize=18;
a = xlabel('$\bf{A_{Total}}$','Interpreter','latex'); a.FontSize=18;
savefig('fig2C.fig'); close all;

%% Panel C
% 

%% Panel D

%% Panel E

%% Panel F

%% Panel G

%% Panel H

%% Panel I

clc
toc