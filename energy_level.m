
% file=input('address of file such as Input_files/1_layer_test.csv ')
% soleq=one_layer.running(file)
% ELx(soleq.ion)

initialise_df;  
par=pc('Input_files/1_layer_test.csv')
for i=0:1
    par.Phi_left=-4.7-0.04*i
    par=refresh_device(par)
    soleq= equilibrate(par)
    JVsol = doJV(soleq.ion, 1e-2, 100, 1, 1, 0, 2, 3)
    figure(4)
    dfplot.JV(JVsol,1)
    legend({'4.7','reverse','4.74','reverse'}, 'Location','northwest')
    text(0.28,0.92,'Different workfunction of left electorde','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_electrode\4p7_4p74.png')
    hold on
    figure(2)
    ELx(JVsol.dk.f,181.8)
    legend({'band energy','E_f_n(4.7)','E_f_p(4.7)','CB(4.7)','VB(4.7)','E_f_n(4.74)','E_f_p(4.74)','CB(4.74)','VB(4.74)'}, 'Location','NorthOutside')
    text(0.28,0.92,' 1.495 V reverse scan','Units','normalized','Color','red','FontSize',12)
    saveas(gcf,'E:\DriftDiffusion-project1\Figures\different_workfunction\left_band_energy\4p7_4p74_reve_peak_149p5.png')
    hold on
end




function ELx(varargin)
            % Energy Level diagram, and charge densities plotter
            % SOL = the solution structure
            % TARR = An array containing the times that you wish to plot
            % XRANGE = 2 element array with [xmin, xmax]
            [sol, tarr, pointtype, xrange] = dfplot.sortarg(varargin);
            [u,t,x,par,dev,n,p,a,c,V] = dfana.splitsol(sol);
            [Ecb, Evb, Efn, Efp] = dfana.QFLs(sol);
            
           
           
            dfplot.x2d(sol, x, {Efn, Efp, Ecb, Evb}, {'E_{fn}', 'E_{fp}', 'CB', 'VB'}, {'--', '--', '-', '-'}, 'Energy [eV]', tarr, xrange, 0, 0)
end

