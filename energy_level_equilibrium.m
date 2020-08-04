
initialise_df;
par=pc('Input_files/1_layer_test.csv')
    
    for i=-1:1
    par.Phi_left=-4.7;
    %par.muani=0;
    par.Ncat=1.00E+18*100^i
    par.Nani=1.00E+18*100^i
    par=refresh_device(par);
    soleq= equilibrate(par);
    JVsol = doJV(soleq.ion, 1e-2, 100, 1, 1, 0, 2, 3);
    
    figure(1)
    dfplot.JV(JVsol,1)
    legend({'forward','reverse'}, 'Location','NorthOutside')
    text(0.2,0.92,'workfunction of left electorde= 4.7','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_electrode\b1.png')
    ELx(JVsol.dk.f,0)
    
    end
    

    
  
   
    
   
   % legend({'band energy','E_f_n(left)','E_f_p(left)','CB(left)','VB(left)','E_f_n(right)','E_f_p(right)','CB(right)','VB(right)'}, 'Location','EastOutside')
   % text(0.01,0.92,'before peak with workfunction= 4.7','Units','normalized','Color','red','FontSize',12)
   % saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_band_energy\4p7_left_peak_1p75v.png')
    
  
    
   
function ELx(varargin)
            % Energy Level diagram, and charge densities plotter
            % SOL = the solution structure
            % TARR = An array containing the times that you wish to plot
            % XRANGE = 2 element array with [xmin, xmax]
            [sol, tarr, pointtype, xrange] = dfplot.sortarg(varargin);
            [u,t,x,par,dev,n,p,a,c,V] = dfana.splitsol(sol);
            [Ecb, Evb, Efn, Efp] = dfana.QFLs(sol);
             
            figure(2)
            dfplot.x2d(sol, x, {Efn, Efp, Ecb, Evb}, {'E_{fn}', 'E_{fp}', 'CB', 'VB'}, {'--', '--', '-', '-'}, 'Energy [eV]', tarr, xrange, 0, 0)
            legend({'cation density','E_f_n(10^1^6)','E_f_p(10^1^6)','CB(10^1^6)','VB(10^1^6)','E_f_n(10^1^8)','E_f_p(10^1^8)','CB(10^1^8)','VB(10^1^8)','E_f_n(10^2^0)','E_f_p(10^2^0)','CB(10^2^0)','VB(10^2^0)'}, 'Location','EastOutside')
            % text(0.01,0.92,'before and after peak with workfunction (ITO)= 4.7','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_band_energy\band_energy\tbsn2.png')
    hold on
            figure(3)
            dfplot.x2d(sol, x, {n, p}, {'n', 'p'}, {'-', '-'}, 'El carrier density [cm-3]', tarr, xrange, 0, 1)
            legend({'cation density','n(10^1^6)','p(10^1^6)','n(10^1^8)','p(10^1^8)','n(10^2^0)','p(10^2^0)'}, 'Location','EastOutside')
             %text(0.01,0.92,'before and after peak with workfunction (ITO)= 4.7','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_band_energy\band_energy\tbsn3.png')
    hold on
            figure(4);
            dfplot.x2d(sol, x, {a, c}, {'a', 'c'}, {'-', '-'}, 'Ionic carrier density [cm-3]', tarr, xrange, 0, 0)
             legend({'cation density','a(10^1^6)','c(10^1^6)','a(10^1^8)','c(10^1^8)','a(10^2^0)','c(10^2^0)'}, 'Location','EastOutside')
             %text(0.01,0.92,'before and after peak with workfunction (ITO)= 4.7','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_band_energy\band_energy\tbsn4.png')
    hold on
end
