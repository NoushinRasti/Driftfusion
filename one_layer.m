
% function soleq=running(file)
clear;
initialise_df;
%    par=pc(file)
%    soleq= equilibrate(par)
%   
% end
  
   
 


% %compare different thicknesses
% par=pc('Input_files/1_layer_test.csv')
% for i=6:10
%    par.d=50*i*10^-7
%    par=refresh_device(par)
%    soleq= equilibrate(par)
%    JVsol= doJV(soleq.ion, 1e-2, 100, 1, 1, 0, 2, 3)
%    dfplot.JV(JVsol,1)
%    legend({'300 nm','reverse','350 nm','reverse','400 nm','reverse','450 nm','reverse','500 nm','reverse'}, 'Location','northwest')
%    text(0.4,0.92,'Different thickness of perovskite','Units','normalized','Color','red','FontSize',12)
%    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_thickness\300_500.png')
% hold on
% end

% %compare different surface recombination velocity
% par=pc('Input_files/1_layer_test.csv')
% for i=20:20:100
%     par.sn_l=i*10^7
%     par=refresh_device(par)
%     soleq = equilibrate(par)
%     JVsol = doJV(soleq.ion, 1e-2, 100, 1, 1, 0, 2, 3)
%     dfplot.JV(JVsol,1)
%     legend({'2*10^8','reverse','4*10^8','reverse','6*10^8','reverse','8*10^8','reverse','1*10^9','reverse'}, 'Location','northwest')
%     text(0.4,0.92,'Different surface recombination velocity','Units','normalized','Color','red','FontSize',11)
%     saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_recombination_velocity\20_20_100_.png')
%     hold on
% end

%compare different Intrinsic cation density
% par=pc('Input_files/1_layer_test.csv')
% for i=4:5
%     par.Ncat=0.5*i*10^18
%     par.Nani=0.5*i*10^18
%     par=refresh_device(par)
%     soleq = equilibrate(par)
%     JVsol = doJV(soleq.ion, 1e-2, 100, 1, 1, 0, 2, 3)
%     dfplot.JV(JVsol,1)
%     legend({'2x10^{18}','reverse','2.5x10^{18}','reverse'}, 'Location','northwest')
%     %'5x10^{17}','reverse','10^{18}','reverse','1.5x10^{18}','reverse',
%     text(0.4,0.92,'Different Intrinsic cation and anion density','Units','normalized','Color','red','FontSize',11)
%     saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_Intrinsic_cation_density\2_2p5_18.png')
%     hold on
% end


%compare different workfunction
par=pc('Input_files/1_layer_test.csv')
for i=-2:2
    par.Phi_right=-4.2
    par.Phi_left=-4.65
    soleq = equilibrate(par)
    JVsol = doJV(soleq.ion, 10^i, 100, 1, 1, 0, 2, 1)
    JVsol2 = doJV(JVsol.dk.r, 10^i, 100, 1, 1, 0, -2, 1)
    dfplot.JV(JVsol,1)
    figure(4)
    hold on
    dfplot.JV(JVsol2,1)
    legend({'1','2','3','4'}, 'Location','northwest')
    xlim([-2.1,2.1])
    text(0.17,0.92,'workfunction of ITo=-4.65 and Al=-4.2, scan rate=0.32V/s','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\right_electrode\4p65_4p2_sr0p32.png')
   hold on
end

