%% Figure 4C
% This figure is going to be showing the presence of multiple biphasic's in the landscape of MekTotal and ErkTotal

tic
clear all
close all

clc 

k = 0;
j = 1;

% Parameters used for this figure

k1 	= 0.1;
k2 	= 1;
k4 	= 30;
p2 	= 0.01;
p3 	= 10;
p4 	= 1;
kb1 	= 1;
kb2 	= 1; 
kb4 	= 1;
pb2 	= 1;
pb3 	= 1;
pb4 	= 1;
kub1 	= 1;
kub2 	= 1;
kub4 	= 1;
pub2 	= 1;
pub3 	= 1;
pub4 	= 1;
PTotal 	= 2.5;

c1 = kb1/(k1 + kub1);
c2 = kb2/(k2 + kub2);
c4 = kb4/(k4 + kub4);
d3 = pb3/(p3 + pub3);
d2 = pb2/(p2 + pub2);
d4 = pb4/(p4 + pub4);

%% Substrate biphasic code
for App_s = 1e-3:0.1:100
	k = k + 1;

	Poly = [-c2*p2^2*d2^2*k1*(App_s*d3 + 1)*k2^2, -2*k2^2*(d3*(p3 + p4)*App_s + p4)*d4*d2*c2*k1*p2, -((App_s^2*d2*(((k2 - p2)*k1 - k2*p2)*p4 + p3*k1*k2)*p3*d3^2 + p4*App_s*(d4*k1*k2*p4 + (((d2 + d4)*k2 - d2*p2)*k1 - d2*k2*p2)*p3)*d3 + p4^2*d4*k1*k2)*c2 + 3*App_s*p3*p4*c4*d2*d3*k1*p2)*d4*k2, -2*p4*App_s*d3*k2*d4*c4*((App_s*(k1*p3 - k4*p2)*d3 - k4*p2)*d2 + d4*k1*p4)*p3, -App_s*d4^2*d3*c4*(App_s*(((p3 - k4)*k2 + p3*k1)*p4 - k2*k4*p3)*d3 - k2*k4*p4)*p4*p3];

	R = roots(Poly);
	for i=1:1:4
		if R(i)>0 && isreal(R(i))
			App(j) = App_s;
			e(j) = R(i);
			j= j+1;
		end
	end
end

ATotal1 = (e.^2.*PTotal.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*c4.*k4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*d4.*p4.*d3.*App.*p3./(e.^2.*c2.*k2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*c1.*k1) + PTotal.*(d2.*e.*p2 + d4.*p4).*d4.*p4.*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + App + (e.^2.*PTotal.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*c4.*k4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*d4.*p4.*d3.*App.*p3.*PTotal.*(d2.*e.*p2 + d4.*p4)./((e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*k1.*(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)) + c2.^2.*PTotal.^2.*(d2.*e.*p2 + d4.*p4).^2.*d4.*p4.*d3.*App.*p3.*e.^2.*k2./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + d2.*PTotal.^2.*e.^3.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4).^2.*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + c4.*PTotal.^2.*(d2.*e.*p2 + d4.*p4).^2.*d4.*p4.*d3.*App.*p3.*e.*c2.*k2./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + d3.*App.*PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + d4.*PTotal.^2.*e.^2.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4).^2.*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)));

KTotal1 = -(-e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) - (e.^2.*PTotal.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*c4.*k4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*d4.*p4.*d3.*App.*p3.*PTotal.*(d2.*e.*p2 + d4.*p4)./((e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*k1.*(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)) - c2.^2.*PTotal.^2.*(d2.*e.*p2 + d4.*p4).^2.*d4.*p4.*d3.*App.*p3.*e.^2.*k2./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) - d2.*PTotal.^2.*e.^3.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4).^2.*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))));


%% Plotting section

figure(1)
plot(ATotal1,KTotal1,'-r','LineWidth',2)
hold on;


clear App App_s k j ATotal KTotal e
k = 0;
j = 1;


%% Enzyme biphasic code
for App_s = 1e-3:0.1:100
	k = k + 1;

	Poly = [k2^2*((((PTotal*d4 + (App_s*d3 + 1)^2)*p2 - d4*PTotal*(d3*(p3 + p4)*App_s + p4))*k1 + p4*PTotal*d4*p2*(App_s*d3 + 1))*k2 + p4*PTotal*d4*k1*p2*(App_s*d3 + 1))*p3*c1*p2^2*c2^3*d3*App_s*d2^3, 2*d3*p3*k2^2*(d2*p4*(((App_s^2*d3^2 + 2*App_s*d3 + c4*PTotal + 1)*k1 + k4*PTotal*c4*(App_s*d3 + 1))*c1 + c2*k2*(App_s*d3 + 1)^2)*p2^2 + (PTotal*c2*d4*(k1 + k2)*(App_s*d3 + 1)*p4^2 + k1*(k2*(App_s^2*d3^2 + 2*App_s*d3 + d4*PTotal + 1)*c2 - App_s*p3*PTotal*c4*d2*d3)*p4 + App_s*p3*c2*d3*k1*k2*(App_s*d3 + 1))*c1*p2 - k1*((App_s*d3 + 1)*p4 + d3*App_s*p3)*c1*k2*PTotal*d4*c2*p4)*d4*c2^2*d2^2*p2*App_s, 3*d3*p3*k2*(4*(PTotal*c1*d4*(p2 - k1)*(App_s*d3 + 1)*p4^3/4 + ((5*d2*(App_s*d3 + 1)^2*p2^2)/4 + k1*c1*(PTotal*d4 + (App_s*d3 + 1)^2)*p2/4 - App_s*p3*PTotal*c1*d3*d4*k1/4)*p4^2 + d3*(App_s*d3 + 1)*p3*(p2*d2 + c1*k1/2)*p2*App_s*p4 + App_s^2*p2*p3^2*c1*d3^2*k1/4)*d4*c2*k2^2/3 + (PTotal*c1*c2*d4^2*k1*(App_s*d3 + 1)*p4^2/3 + (5*c1*d4*((App_s^2*d3^2*k1 + (2*k1 + (k4*c4 - 1/5*p3*c4)*PTotal)*App_s*d3 + k4*PTotal*c4 + PTotal*c4*k1 + k1)*p2 - (4*d3*App_s*p3*PTotal*c4*k1)/5)*d2*p4)/3 + (k4*c4*d2*(App_s*d3 + 1)^2*p2 + (2*d3*((2*App_s*d3*k1 + 1/2*k4*PTotal*c4 + 2*k1)*d4 + c4*k1*(App_s*d3 + 1))*p3*c1*App_s)/3)*d2*p2)*p2*p4*k2 - p2^2*d4*c1*d2*p4^2*App_s*c4*d3*k1*p3*PTotal/3)*d4*c2^2*d2*App_s, 6*d3*p3*(((d3*(p3 + p4)*App_s + p4)*(App_s*(p3 + 2*p4)*d3 + 2*p4)*k2^2*d4*p2*c2^2)/3 + (((((4*k4)/3 + (2*p3)/3)*p4 + k4*p3)*App_s*d3 + (4*k4*p4)/3)*(App_s*d3 + 1)*k2*d2*c4*p2^2 + c1*((k1*(p3 + p4)*((c4 + d4)*p3 + 2*d4*p4)*App_s^2*d3^2 + (2*(k4*PTotal*c4 - 1/2*p3*PTotal*c4 + 2*k1)*d4*p4 + ((c4*k4*PTotal + 3*k1)*d4 + c4*k1)*p3)*App_s*p4*d3 + 2*(PTotal*(k4 + k1)*c4 + k1)*d4*p4^2)*k2 - App_s*p3*p4^2*PTotal*c4*d3*d4*k1)*p2/3 - App_s*p3*p4^2*PTotal*c1*c4*d3*d4*k1*k2/3)*c2 + (2*App_s*c1*c4*d2*d3*k1*p2^2*p3*p4*(App_s*d3 + 1))/3)*k2*d4^2*c2*d2*App_s*p4, 6*d3*p3*(((App_s^2*k2*(c1*k1 + c2*k2)*d3^2 + (2*k2^2*c2 + c1*((c4*k4*PTotal - c4*p3*PTotal + 2*k1)*k2 - p3*PTotal*c4*k1))*App_s*d3 + k2*(k2*c2 + c1*(PTotal*(k4 + k1)*c4 + k1)))*d4^2*c2*p4^3)/6 + (7*d4*((2*d3*p3*(App_s*(c1*k1 + c2*k2)*d3 + k2*c2 + c1*(c4*k4*PTotal + 2*k1)/2)*k2*c2*App_s*d4)/7 + ((k2*(k4 + (6*p3)/7)*c2 + (6*c1*k1*p3)/7)*App_s*d3 + c2*k2*k4)*(App_s*d3 + 1)*d2*p2*c4)*p4^2)/6 + d3*p3*(App_s*p3*c2*d3*k2*(c1*k1 + c2*k2)*d4^2/6 + (5*d2*((k2*(k4 + (2*p3)/5)*c2 + (2*c1*k1*p3)/5)*App_s*d3 + c2*k2*k4)*p2*c4*d4)/3 + (App_s*(d2*k4*p2 + c1*k1*p3/6)*d3 + d2*k4*p2)*d2*p2*c4^2)*App_s*p4 + d2*p2*c4*d4*k2*c2*App_s^2*d3^2*k4*p3^2/2)*k2*d4^2*c2*App_s*p4, 6*d3*p3*(((((k4 + p3)*p4 + k4*p3)*(p3 + p4)*k2^2*d4*c2^2)/3 + p3*k2*(p4^2*c1*d4*k1/3 + ((p2*c4*d2/3 + c1*d4*k1/3)*p3 + (5*c4*d2*k4*p2)/3)*p4 + c4*d2*k4*p2*p3)*c2 + p2*p3^2*p4*c1*c4*d2*k1/3)*App_s^2*d3^2 + 5*(2*((k4 + p3/2)*p4 + k4*p3)*k2*d4*c2/5 + p3*(c4*d2*k4*p2 + c1*d4*k1*p4/5))*k2*c2*App_s*p4*d3/3 + k4*p4^2*c2^2*d4*k2^2/3)*d4^3*App_s*p4^2*c4, 3*d3^2*(((((k2*c2/3 + c1*k1/3)*p4 + (4*c2*k2*k4)/3)*p3 + (4*k2*c2*p4*k4)/3)*d4 + c4*d2*k4*p2*p3)*App_s*d3 + (4*k2*d4*c2*p4*k4)/3)*p3^2*d4^3*App_s^2*p4^3*c4^2, 2*d3^3*p3^3*App_s^3*d4^4*p4^4*c4^3*k4];

	R = roots(Poly);
	R	=	R(R>0);
	R	=	R(isreal(R));
	for i=1:1:length(R)
			App(j) = App_s;
			e(j) = R(i);
			j= j+1;
	end
end

ATotal2 = (e.^2.*PTotal.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*c4.*k4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*d4.*p4.*d3.*App.*p3./(e.^2.*c2.*k2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*c1.*k1) + PTotal.*(d2.*e.*p2 + d4.*p4).*d4.*p4.*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + App + (e.^2.*PTotal.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*c4.*k4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*d4.*p4.*d3.*App.*p3.*PTotal.*(d2.*e.*p2 + d4.*p4)./((e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*k1.*(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)) + c2.^2.*PTotal.^2.*(d2.*e.*p2 + d4.*p4).^2.*d4.*p4.*d3.*App.*p3.*e.^2.*k2./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + d2.*PTotal.^2.*e.^3.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4).^2.*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + c4.*PTotal.^2.*(d2.*e.*p2 + d4.*p4).^2.*d4.*p4.*d3.*App.*p3.*e.*c2.*k2./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) + d3.*App.*PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + d4.*PTotal.^2.*e.^2.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4).^2.*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)));

KTotal2 = -(-e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) - (e.^2.*PTotal.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4)./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*c4.*k4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*d4.*p4.*d3.*App.*p3.*PTotal.*(d2.*e.*p2 + d4.*p4)./((e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)).*k1.*(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4)) - c2.^2.*PTotal.^2.*(d2.*e.*p2 + d4.*p4).^2.*d4.*p4.*d3.*App.*p3.*e.^2.*k2./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))) - d2.*PTotal.^2.*e.^3.*c2.^2.*k2.^2.*(d2.*e.*p2 + d4.*p4).^2.*d3.*App.*p3./((c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4).^2.*(e.^2.*PTotal.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d2.*p2./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4) + PTotal.*e.*c2.*k2.*(d2.*e.*p2 + d4.*p4).*d4.*p4./(c2.*d2.*k2.*p2.*(App.*d3 + 1).*e.^2 + (d3.*(p3 + p4).*App + p4).*d4.*c2.*k2.*e + c4.*d3.*d4.*App.*p3.*p4))));


%% Plotting section

figure(1)
plot(ATotal2,KTotal2,'-b','LineWidth',2)
xlabel('Erk_{Total}')
ylabel('Mek_{Total}')
xlim([0 100])
ylim([0 100])
legend('Substrate biphasic','Enzyme biphasic')



%% This is a Fucking mess of a code

[ErkTotal, MekTotal] = meshgrid(linspace(0.1,1e2,1e3),linspace(0.1,1e2,1e3));

parameters = [k1,k2,k4,kb1,kb2,kb4,kub1,kub2,kub4,p2,p3,p4,pb2,pb3,pb4,pub2,pub3,pub4];

[m,n]	= 	size(ErkTotal);
k	=	1;
for i = 1:1:m
	for j = 1:1:n
		% parameters = [parameters,ErkTotal(i),MekTotal(j),PTotal];
		% [App,e] = fsolve(@(x) Totals(x,parameters),[ErkTotal(i);100]);
		% S = lsqnonlin(@(x) Totals(x,parameters),[ErkTotal(i);20],zeros(2,1));
		% App = S(1)
		% e   = S(2);


		Poly = [-c1*c2^2*d2^2*k1^2*k2^2*p2^2*PTotal, -2*c2^2*d2*(MekTotal(i,j)*d2*(-d3*ErkTotal(i,j) + d3*PTotal - 1)*p2^2/2 + (-PTotal*d2*d3*p3/2 + p3*(-1 + (MekTotal(i,j) + ErkTotal(i,j))*d3)*d2/2 + p3*d3/2 + d4*(p4 + p3/2))*PTotal*p2 - PTotal^2*d2*d3*p3^2/2)*k2^2*k1^2*c1, 2*k2*(((-k2*(PTotal*d3*(MekTotal(i,j) - ErkTotal(i,j))*p3^2 - p2*(-d3*PTotal - 1 + (MekTotal(i,j) - ErkTotal(i,j))*d3)*MekTotal(i,j)*p3 - MekTotal(i,j)^2*d3*p2^2)*k1*d2^2/2 + ((d3*((d4*PTotal/2 + 1/2 + (-MekTotal(i,j)/2 - ErkTotal(i,j)/2)*d4)*k2 + PTotal*p4*d4)*PTotal*p3^2 + ((p4*PTotal^2*d3*d4/2 - (((2*MekTotal(i,j)*p2 + p4*(MekTotal(i,j) + ErkTotal(i,j)))*d3 - p4)*d4*PTotal)/2 + p2*((1/2 + ErkTotal(i,j)*d4)*d3 + d4/2)*MekTotal(i,j))*k2 - p2*PTotal*p4*(-d3*PTotal - 1 + (MekTotal(i,j) + ErkTotal(i,j))*d3)*d4/2)*p3 - p4*MekTotal(i,j)*d4*k2*p2*(-d3*ErkTotal(i,j) + d3*PTotal - 1))*k1 + k2*PTotal*p4*p3*d4*(d3*PTotal*p3 - p2*(-d3*PTotal - 1 + (MekTotal(i,j) + ErkTotal(i,j))*d3)/2))*d2 - PTotal*d4*k1*k2*(p3 + p4)*(d3*p3 + d4*p4)/2)*c2 - p3*p4*PTotal*d2*d4*k1*p2*(c4 + d3)/2)*c1 - c2*d2*d3*d4*k2*p2*p3*p4*PTotal/2)*c2*k1, (((-(d3*(PTotal - ErkTotal(i,j))*p3 + (-1 + (PTotal - ErkTotal(i,j))*d3)*p4)*MekTotal(i,j)*c2*(p3 + p4)*k2^2 - PTotal*p3*((1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*c2)*d3*p3 + ((1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*c2)*d3 - c2 + c4)*p4)*p4*k2 + p3^2*p4^2*PTotal^2*c2*d3)*c1*k1^2 + 2*k2*PTotal*c2*((-d3*(1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*c1)*p3/2 - (((-1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*d3)*c1 + d3)*p4)/2)*k2 + c1*p3*p4*PTotal*d3)*p3*p4*k1 + c1*p3^2*p4^2*PTotal^2*c2*d3*k2^2)*d4^2 + k2*k1*((2*MekTotal(i,j)*c2*(d3*(-d2*ErkTotal(i,j) + d2*MekTotal(i,j) - d2*PTotal + 1)*p3^2/2 + ((d3*(1/2*MekTotal(i,j)*d2 - 1/2*PTotal*d2 - 1/2*ErkTotal(i,j)*d2 + 1/2) - d2/2)*p4 + p2*MekTotal(i,j)*d2*d3)*p3 + p4*p2*MekTotal(i,j)*d2*d3)*k2 + (-2*d3*PTotal*((MekTotal(i,j)*d2 - ErkTotal(i,j)*d2 - 1/2)*c2 + MekTotal(i,j)*c4*d2/2 - PTotal*c4*d2/2 + ErkTotal(i,j)*c4*d2/2 + c4/2 - d2/2)*p3 + d2*MekTotal(i,j)*(((MekTotal(i,j) - PTotal - ErkTotal(i,j))*c2 - 2*PTotal*c4 + 2*ErkTotal(i,j)*c4 + 1)*d3 - c2 + c4)*p2)*p3*p4)*c1*k1 + p3*(c2*(-2*d3*PTotal*((MekTotal(i,j)*d2 - ErkTotal(i,j)*d2 - 1/2)*c1 - d2/2)*p3 + MekTotal(i,j)*d2*p2*((-1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*d3)*c1 + d3))*k2 - PTotal*(-2*c1*PTotal*d3*p3 + ((-1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*d3)*c1 + d3)*p2)*d2*k4*c4)*p4)*d4 - c1*c2*d2*d3*k1^2*k2^2*p3^2*MekTotal(i,j))*c2, 2*((-d3*(PTotal*(k1 + k2)*(c1*(MekTotal(i,j) - ErkTotal(i,j))*k1 + k2*(-1 + (MekTotal(i,j) - ErkTotal(i,j))*c1))*d4*p4^2 - k2*MekTotal(i,j)*k1*((-1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*d4)*c1*k1 + k2*((-1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*d4)*c1 - d2 + d4))*p4 - c1*MekTotal(i,j)^2*d4*k1^2*k2^2)*p3^2/2 + k2*MekTotal(i,j)*k1*d4*p4*(((-1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*d3)*c1*k1 + k2*((1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*c1)*d3 - c1))*p4 + 2*c1*MekTotal(i,j)*d3*k1*k2)*p3/2 + c1*p4^2*MekTotal(i,j)^2*d3*d4*k1^2*k2^2/2)*c2^2 + p3*(-d3*(PTotal*d4*(c1*(c4*ErkTotal(i,j) + c4*MekTotal(i,j) - c4*PTotal - 1)*k1^2 + (((c4*ErkTotal(i,j) + c4*MekTotal(i,j) - c4*PTotal - 1)*c1 + c4)*k2 - 2*c1*PTotal*c4*k4)*k1 - 2*c1*c4*k2*k4*PTotal)*p4 - k2*(((2*c4*ErkTotal(i,j) - 2*c4*PTotal + 1)*d4 + MekTotal(i,j)*c4*d2 - PTotal*c4*d2 - ErkTotal(i,j)*c4*d2 + c4 - d2)*MekTotal(i,j)*c1*k1 - 2*PTotal*k4*c4*(((MekTotal(i,j)/2 - PTotal/2 + ErkTotal(i,j)/2)*d4 + MekTotal(i,j)*d2 - ErkTotal(i,j)*d2 - 1/2)*c1 - d2/2 + d4/2))*k1)*p3/2 + k2*(-d4*(MekTotal(i,j)*((PTotal*c4 - ErkTotal(i,j)*c4 - 1/2)*d3 - c4/2)*c1*k1 + PTotal*k4*(d3*(1 + (MekTotal(i,j) - PTotal + ErkTotal(i,j))*c1) - c1)*c4/2)*p4 + d2*MekTotal(i,j)*p2*c4*(c1*MekTotal(i,j)*d3*k1 + k4*((1 + (MekTotal(i,j) - PTotal - ErkTotal(i,j))*c1)*d3 - c1)/2))*k1)*p4*c2 - c1*k1^2*c4*d3*d4*p3^2*p4^2*PTotal/2)*d4, (((-p4*p3*(c1*MekTotal(i,j)*(PTotal - ErkTotal(i,j))*k1^2 + (c1*MekTotal(i,j) + 1 + (-PTotal + ErkTotal(i,j))*c1)*k4*PTotal*k1 - c1*PTotal^2*k4^2)*c4^2 + ((((MekTotal(i,j)*c2 + 1 + (-PTotal - ErkTotal(i,j))*c2)*p4 + 2*MekTotal(i,j)*c2*k2)*p3 + 2*p4*MekTotal(i,j)*c2*k2)*MekTotal(i,j)*c1*k1^2 + (((c1*MekTotal(i,j)^2*c2*k2 - (((PTotal + ErkTotal(i,j))*k2 + 2*PTotal*k4)*c1 - k2)*c2*MekTotal(i,j) + 2*k4*PTotal*((ErkTotal(i,j)*c2 + 1/2)*c1 + c2/2))*p4 + k2*k4*c2*(c1*MekTotal(i,j) + 1 + (-PTotal - ErkTotal(i,j))*c1)*MekTotal(i,j))*p3 + k2*k4*c2*p4*(c1*MekTotal(i,j) + 1 + (-PTotal - ErkTotal(i,j))*c1)*MekTotal(i,j))*k1 - 2*p3*p4*PTotal*c2*k2*k4*(-c1*ErkTotal(i,j) + c1*MekTotal(i,j) - 1))*c4 - p3*p4*MekTotal(i,j)*c2*(k1 + k2)*(c1*k1 + c2*k2))*d4 - p3*MekTotal(i,j)*c2*c4*k1*k2*k4*(c1 + d2))*d3 - c1*c2*c4*d4*k1*k2*k4*p4*MekTotal(i,j))*p4*p3*d4, d4^2*(-PTotal*c4*(-c1*ErkTotal(i,j) + c1*MekTotal(i,j) - 1)*k4^2 + MekTotal(i,j)*(c1*MekTotal(i,j)*c4*k1 - (-1 + (PTotal + ErkTotal(i,j))*c1)*k1*c4 - c1*k1 - c2*(k1 + 2*k2))*k4 + c1*MekTotal(i,j)^2*c4*k1^2)*d3*p3^2*p4^2*c4, -c4^2*d3*d4^2*k4^2*p3^2*p4^2*MekTotal(i,j)];

		R	=	roots(Poly);
		R	=	R(R == real(R) & R>0);
		App = c2.*R.*k1.*k2.*(d2.*R.^2.*p2.*PTotal - d2.*R.*p2.*MekTotal(i,j) + d4.*R.*p4.*PTotal - d4.*p4.*MekTotal(i,j))./(d3.*(c2.*d2.*R.^2.*k1.*k2.*p2.*MekTotal(i,j) - c2.*d2.*R.^2.*k1.*k2.*p3.*PTotal + c2.*d4.*R.*k1.*k2.*p3.*MekTotal(i,j) + c2.*d4.*R.*k1.*k2.*p4.*MekTotal(i,j) - c2.*d4.*R.*k1.*p3.*p4.*PTotal - c2.*d4.*R.*k2.*p3.*p4.*PTotal + c4.*d4.*k1.*p3.*p4.*MekTotal(i,j) - c4.*d4.*k4.*p3.*p4.*PTotal));
		R	=	R(App>0);
		App = c2.*R.*k1.*k2.*(d2.*R.^2.*p2.*PTotal - d2.*R.*p2.*MekTotal(i,j) + d4.*R.*p4.*PTotal - d4.*p4.*MekTotal(i,j))./(d3.*(c2.*d2.*R.^2.*k1.*k2.*p2.*MekTotal(i,j) - c2.*d2.*R.^2.*k1.*k2.*p3.*PTotal + c2.*d4.*R.*k1.*k2.*p3.*MekTotal(i,j) + c2.*d4.*R.*k1.*k2.*p4.*MekTotal(i,j) - c2.*d4.*R.*k1.*p3.*p4.*PTotal - c2.*d4.*R.*k2.*p3.*p4.*PTotal + c4.*d4.*k1.*p3.*p4.*MekTotal(i,j) - c4.*d4.*k4.*p3.*p4.*PTotal));
		if length(App) ~= 1
			disp('Hey there is multistability here')
			Sol(i,j) = max(App);
			Sol2(i,j) = min(App);
			% pause
		else
			Sol(i,j) = min(App);
			Sol2(i,j) = min(App);
		end


	end

end


%% Contour part of the code

for i=1:1:m
	[u,v] = max(Sol(i,:));
	En_index(i) = v;
end

for j=1:1:m
	[u,v] = max(Sol(:,j));
	Sub_index(j) = v;
end


%% Plotting section 

figure(2)
mesh(ErkTotal,MekTotal,Sol)
xlabel('ErkTotal')
ylabel('MekTotal')
zlabel('App Concentration')
hold on;
Extract  = Sol(sub2ind(size(Sol),Sub_index,[1:1:n]));
plot3(ErkTotal(1,:),MekTotal(Sub_index,1),Extract,'LineWidth',3);
Extract  = Sol(sub2ind(size(Sol),[1:1:m],En_index));
plot3(ErkTotal(1,En_index),MekTotal(:,1),Extract,'LineWidth',3);
savefig('Fig04E.fig')

figure(3)
mesh(ErkTotal,MekTotal,Sol2)
xlabel('ErkTotal')
ylabel('MekTotal')
zlabel('App Concentration')
hold on;
Extract  = Sol(sub2ind(size(Sol),Sub_index,[1:1:n]));
plot3(ErkTotal(1,:),MekTotal(Sub_index,1),Extract,'LineWidth',3);
Extract  = Sol(sub2ind(size(Sol),[1:1:m],En_index));
plot3(ErkTotal(1,En_index),MekTotal(:,1),Extract,'LineWidth',3);


savefig('Fig04D.fig')
toc
