function fig = Main(System,p,initial,ap,ip,flag)


	tspan	=	[0 1e8];
	opt	=	contset;
	opt	=	contset(opt,'MaxStepsize',0.1);
	opt	=	contset(opt,'Singularities',1);
	opt	=	contset(opt,'MinStepsize',1e-5);
	opt	=	contset(opt,'MaxNumPoints',1e4);

	switch System
		case 'Two_Tier_Cascade'

			hls	= Two_Tier_Cascade;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11),p(12),p(13),p(14),p(15),p(16));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@Two_Tier_Cascade,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);


		case 'Two_Cov_Cyc'

			hls	= Two_Cov_Cyc;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11),p(12),p(13),p(14),p(15),p(16));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@Two_Cov_Cyc,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);


		case 'DSP_ComK_ComP'

			hls	= DSP_ComK_ComP;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11),p(12),p(13),p(14),p(15));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@DSP_ComK_ComP,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);


		case 'DSP_SepK_SepP'

			hls	= DSP_SepK_SepP;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11),p(12),p(13),p(14),p(15),p(16),p(17));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@DSP_SepK_SepP,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);


		case 'DSP_SepK_ComP'

			hls	= DSP_SepK_ComP;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11),p(12),p(13),p(14),p(15),p(16));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@DSP_SepK_ComP,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);


		case 'DSP_ComK_SepP'

			hls	= DSP_ComK_SepP;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11),p(12),p(13),p(14),p(15),p(16));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@DSP_ComK_SepP,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);


		case 'PPI_Full'

			hls	= PPI_Full;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@PPI_Full,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);

		case 'ERK'

			hls	= ERK;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11),p(12),p(13),p(14),p(15),p(16),p(17),p(18),p(19),p(20),p(21));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@ERK,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);

		case 'Biphasic_Reg_DSP'

			hls	= Biphasic_Reg_DSP;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11),p(12),p(13),p(14),p(15),p(16),p(17),p(18),p(19),p(20),p(21),p(22));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@Biphasic_Reg_DSP,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);

		case 'Biphasic_Reg_Inch_DSP'

			hls	= Biphasic_Reg_Inch_DSP;
			[~,C]	= ode15s(hls{2},tspan,initial,[],p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10),p(11),p(12),p(13),p(14),p(15),p(16),p(17),p(18),p(19),p(20),p(21),p(22),p(23));
			x0	= C(end,:)';
			[x0,v0]	= init_EP_EP(@Biphasic_Reg_Inch_DSP,x0,p,ap);
			opt	=	contset(opt,'Backward',flag);
			[x,v,s,h,f]	= cont(@equilibrium,x0,v0,opt);


	end

	fig = figure
	hold on; box on;
	len	=	length(s);
	if len == 2
		plot(x(end,:),x(ip,:),'-k','LineWidth',2)
		[~,in]	= max(x(ip,:))
		
		xmax = round(x(end,in)*4/5)*5;
		set(gca,'XLim',[0 xmax],'XTick',[0:xmax/4:xmax]);
		else
			if len == 4
				plot(x(end,1:s(2).index),x(ip,1:s(2).index),'-k','LineWidth',2)
				plot(x(end,s(2).index+1:s(3).index),x(ip,s(2).index+1:s(3).index),'--k','LineWidth',2)
				plot(x(end,s(3).index+1:end),x(ip,s(3).index+1:end),'-k','LineWidth',2)
				text(x(end,s(2).index)-3,x(ip,s(2).index),'LP','HorizontalAlignment','left')
				text(x(end,s(3).index)+3,x(ip,s(3).index),'LP','HorizontalAlignment','right')
				xmax = round(x(end,s(3).index)*2/5)*5;
				set(gca,'XLim',[0 xmax],'XTick',[0:xmax/5:xmax]);


			else
				disp('There is something wrong - check this');
			end
	end
	ax	=	gca;
	ax.FontSize 	=	14;
	ax.FontWeight	=	'bold';
	ax.LineWidth	=	0.75;


	if max(x(ip,:))<1
		ymax = 1;
	else	
		ymax = round(max(x(ip,:))*1.3)/round(max(x(ip,:)))*round(max(x(ip,:)));
	end

	set(gca,'YLim',[0 ymax],'YTick',[0:ymax/4:ymax]);

end
