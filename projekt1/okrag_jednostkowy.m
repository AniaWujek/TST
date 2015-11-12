function okrag_jednostkowy(macierzA, figura) 
    
    figure(figura);
    hold on;
    r = 1;
    
    punkty = generuj_punkty_pocz(1,360);
    rysuj_punkty = [];
    for i = 1:size(punkty)
        rysuj_punkty = [rysuj_punkty ; (macierzA*punkty(i,:)')'];
    end
    plot(rysuj_punkty(:,1),rysuj_punkty(:,2),'r');
    plot(punkty(:,1),punkty(:,2));
    
    
end
