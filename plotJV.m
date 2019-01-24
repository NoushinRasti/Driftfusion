function plotJV(JV, option)
% JV - a soultion from doJV
% OPTION - 1 = dark only, 2 = light only, 3 = dark & light
% JV is a structure containing dark and illuminated JVs

if option == 1 || option == 3
    dfana(JV.dk.f);
    figure(11)
    %xlim([-0.2, 1.15])
    ylim([-25e-3, 5e-3]);
    hold on
    dfana(JV.dk.r);
    
end

if option == 2 || option == 3
    dfana(JV.ill.f);
    
    figure(11)
    %xlim([-0.2, 1.15])
    ylim([-25e-3, 5e-3]);
    hold on
    dfana(JV.ill.r);
end

hold off

end