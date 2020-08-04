
initialise_df;
par=pc('Input_files/1_layer_test.csv')
    
    
    par.Phi_left=-4.7;
    %par.muani=0;
    par=refresh_device(par);
    soleq= equilibrate(par);
    JVsol = doJV(soleq.ion, 1e-2, 100, 1, 1, 0, 2, 3);
    
    figure(4)
    dfplot.JV(JVsol,1)
    legend({'forward','reverse'}, 'Location','NorthOutside')
    text(0.2,0.92,'workfunction of left electorde= 4.7','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_electrode\b1.png')
    ELx(JVsol.dk.f,0)
    

    
  
   
    
   
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
             
            figure(1)
            dfplot.x2d(sol, x, {Efn, Efp, Ecb, Evb}, {'E_{fn}', 'E_{fp}', 'CB', 'VB'}, {'--', '--', '-', '-'}, 'Energy [eV]', tarr, xrange, 0, 0)
            legend({'band energy','E_f_n(before)','E_f_p(before)','CB(before)','VB(before)','E_f_n(after)','E_f_p(after)','CB(after)','VB(after)'}, 'Location','EastOutside')
             text(0.01,0.92,'before and after peak with workfunction (ITO)= 4.7','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_band_energy\band_energy\tbs2.png')
    hold on
            figure(2)
            dfplot.x2d(sol, x, {n, p}, {'n', 'p'}, {'-', '-'}, 'El carrier density [cm-3]', tarr, xrange, 0, 1)
            legend({'carrier density','n(before)','p(before)','n(after)','p(after)'}, 'Location','EastOutside')
             text(0.01,0.92,'before and after peak with workfunction (ITO)= 4.7','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_band_energy\band_energy\tbs3.png')
    hold on
            figure(3);
            dfplot.x2d(sol, x, {a, c}, {'a', 'c'}, {'-', '-'}, 'Ionic carrier density [cm-3]', tarr, xrange, 0, 0)
             legend({'Ionic carrier density','a(before)','c(before)','a(after)','c(after)'}, 'Location','EastOutside')
             text(0.01,0.92,'before and after peak with workfunction (ITO)= 4.7','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_band_energy\band_energy\tbs4.png')
    hold on
end
