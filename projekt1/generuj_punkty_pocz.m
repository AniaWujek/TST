function punkty_poczatkowe = generuj_punkty_pocz(promien, liczba_punktow)
    
    punkty_poczatkowe = [];
    theta = linspace(0,2*pi,liczba_punktow);
    z = promien * exp(1i * theta);
    for i = 1:liczba_punktow
        punkty_poczatkowe = [punkty_poczatkowe ; [real(z(i)) imag(z(i))]];
    end
    
end
