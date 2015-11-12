function rysuj_wektory(wekt_wlasne, wart_wlasne, figura) 
    
    figure(figura);
    hold on;
    grid on;
    do_rysowania = [];
    for i = 1:size(wekt_wlasne)(2)
        do_rysowania(i,:) = (wart_wlasne(i)*wekt_wlasne(:,i))';
    end
    ppoczX = zeros(size(wekt_wlasne)(2),1);
    ppoczY = zeros(size(wekt_wlasne)(2),1);
    quiver(ppoczX,ppoczY,do_rysowania(:,1),do_rysowania(:,2),1);   
    
end
