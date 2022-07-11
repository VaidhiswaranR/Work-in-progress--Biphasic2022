%% Okay we are retiring this effort because it has Hopfs and it's not worth it apart from the parameter values. tic 

clear
clc

addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures'))
addpath(genpath('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/matcont6p11'))
mkdir('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4');
close all

%% Panel 0 
% Expected response from the motif
System          = 'S2__IntegHomCont_Up';
parameters      = [0,1,1,1,1,1,1,1,1,1];
initial         = [1,1,1];
ap              = [2];
ip		        = 1;
flag            = 1;

fig10 = Main(System,parameters,initial,ap,ip,flag);
title('Simple regulation of Integral Control Motif by Signal','FontSize',16);
subtitle('Presence of oscillations and homeostatic regulation','Interpreter','latex');
a = ylabel('\bf{A}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{Signal (S)}','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4.fig'); close all;

%% Panel A
% Results showing simple biphasic signal regulation
System          = 'S2__IntegHomCont_Up';
parameters      = [1,1,1,1,1,1,1,1,1,1];
initial         = [1,1,1];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic Signal Regulation of Integral Control Motif','FontSize',16);
subtitle('Reduced range of homeostasis with signal','Interpreter','latex');
a = ylabel('\bf{A}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{Signal (S)}','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4A_a.fig'); close all;

% Results showing simple biphasic signal regulation
System          = 'S2__IntegHomCont_Up';
parameters      = [1,1,1,1,1,1,1,1,1,1];
initial         = [1,1,1];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic Signal Regulation of Integral Control Motif','FontSize',16);
subtitle('Complete loss of stability and homeostasis with signal','Interpreter','latex');
a = ylabel('\bf{A}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{Signal (S)}','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4A_b.fig'); close all;

%% Panel B
% Results showing biphasic within interaction leading to saturation response
System          = 'S2__IntegHomCont';
parameters      = [1,1,1,1,1,1,1,1,1,1];
initial         = [1,1,1];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interactions within Integral Control Motif','FontSize',16);
subtitle('Presence of upper bound in signal regulation','Interpreter','latex');
a = ylabel('\bf{A}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{Signal (S)}','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4B_a.fig'); close all;

% Biphasic within interaction leading to shrinking range of stability
parameters      = [1,1,1,1,1,1,1,1,1,1];
initial         = [1,1,1];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interactions within Integral Control Motif','FontSize',16);
subtitle('Shrinking range of stability and homeostasis in steady state','Interpreter','latex');
a = ylabel('\bf{A}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{Signal (S)}','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4B_b.fig'); close all;

% Biphasic within interaction leading to complete loss of stability
System          = 'S2__IntegHomCont';
parameters      = [1,1,1,1,1,1,1,1,1,1];
initial         = [1,1,1];
ap              = [2];
ip		        = 1;
flag            = 0;

fig10 = Main(System,parameters,initial,ap,ip,flag);
title('Biphasic interactions within Integral Control Motif','FontSize',16);
subtitle('Complete loss of stability and homeostasis in steady state','Interpreter','latex');
a = ylabel('\bf{A}','Interpreter','latex','rotation',0,'VerticalAlignment','bottom','HorizontalAlignment','center'); a.FontSize=18;
a = xlabel('\bf{Signal (S)}','Interpreter','latex'); a.FontSize=18;
savefig('/Users/vaidhiswaranramesh/Desktop/Acad/Paper 9 (Biphasic) - Progress/Figures/FS4/FigS4B_c.fig'); close all;
