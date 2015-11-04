function [wektoryX wektoryY] = rysuj_pole_wektorowe(punkty_poczX, punkty_poczY, macierzA,figura) 
    
    wektory = [];
    for i = 1:size(punkty_poczX)(1)
        for j = 1:size(punkty_poczX)(2)
            p_pocz = [punkty_poczX(i,j);punkty_poczY(i,j)];
            p_koniec = macierzA*p_pocz; 
            wektoryX(i,j) = p_koniec(1);
            wektoryY(i,j) = p_koniec(2);        
        end
    end
    figure(figura);
    hold on;
    quiver(punkty_poczX,punkty_poczY,wektoryX,wektoryY,1.2);
end

