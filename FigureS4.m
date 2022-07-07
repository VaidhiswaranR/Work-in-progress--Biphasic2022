tic 

clear
clc

addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures'))
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/matcont6p11'))
mkdir('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4');
close all

%% Panel A
% Results showing simple biphasic signal regulation
System          = 'S2__IntegHomCont';
parameters      = [];
initial         = [];
ap              = [];
ip		        = ;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4_a0.fig'); close all;

System          = 'S2__IntegHomCont';
parameters      = [];
initial         = [];
ap              = [];
ip		        = ;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4_a.fig'); close all;


%% Panel B
% Results showing biphasic in the interaction and its consequence
System          = 'S2__IntegHomCont';
parameters      = [];
initial         = [];
ap              = [];
ip		        = ;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4_b0.fig'); close all;

System          = 'S2__IntegHomCont';
parameters      = [];
initial         = [];
ap              = [];
ip		        = ;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
title('','FontSize',16);
subtitle('','Interpreter','latex');
a = ylabel('','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4_b.fig'); close all;