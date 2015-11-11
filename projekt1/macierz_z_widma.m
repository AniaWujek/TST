function matrix = macierz_z_widma(wart_wlasne, wekt_wlasne)
    if any(any(imag(wart_wlasne)))
        matrix=[real(wart_wlasne(1)) imag(wart_wlasne(1)) ; imag(wart_wlasne(2)) real(wart_wlasne(2))];
    else     
        D =  diag(wart_wlasne);
        matrix = wekt_wlasne*D*wekt_wlasne^(-1);
    end
end
