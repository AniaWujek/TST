function [wektoryX wektoryY] = rysuj_trajektorie(punkty_pocz, macierzA, figura, liczba_krokow) 
    
    figure(figura);
    hold on;
    grid on;
    t = [];       
        
    for i = 1:size(punkty_pocz)(1)
        t = trajektoria_z_punktu_pocz(punkty_pocz(i,:)',macierzA,liczba_krokow);
        plot(t(:,1),t(:,2),'-o','MarkerFaceColor','r');
        plot(t(1,1),t(1,2),'bo'); % starting point
        text(t(1,1),t(1,2),'start');
        plot(t(end,1),t(end,2),'ks'); % ending point
        text(t(end,1),t(end,2),'end');
    end
end

