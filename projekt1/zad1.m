close all;
konsola = 1;
zespolone = 0;

%konstruowanie macierzy o zadanym widmie
widmo = [0.1i -0.2i];
wektory_wl = [0.1 0.2 ; 3.2 -0.4];
A = macierz_z_widma(widmo,wektory_wl);

if konsola
    disp('Dla widma');
    widmo
    if !zespolone
        disp('i wektorow wlasnych:');
        wektory_wl
    end
    disp('Macierz A jest: ');
    A
end

[wekt_wl wart_wl] = eig(A);
if konsola
    disp('Wektory wlasne i wartosci wlasne macierzy A obliczone przez eig(A)');
    disp('Wartosci wlasne:');
    [wart_wl(1,1) wart_wl(2,2)]
    disp('Wektory wlasne:');
    wekt_wl(:,1)
    wekt_wl(:,2)
end

%okreslanie zbioru punktow poczatkowych na okregu
promien_okregu = 10;
liczba_punktow = 4;
p0 = generuj_punkty_pocz(promien_okregu,liczba_punktow);

%obliczanie trajektorii ukladu dla p0unktow poczatkowych
for i = 1:size(p0)(1)
    trajektoria = trajektoria_z_punktu_pocz(p0(i,:)',A,10);
    if konsola
        disp('Dla punktu');
        p0(i,:)
        disp('trajektoria  dla 10 krokow to:');
        trajektoria            
    end
end

%obliczanie wektorow wlasnych
nowe_wektory_wlasne = oblicz_wektory_wlasne(A);
if konsola
    disp('Wektory wlasne macierzy A:');
    nowe_wektory_wlasne
    if !zespolone
        disp('dla porownania wektory wlasne wykorzystane przy tworzeniu macierzy:');
        wektory_wl
    end
end

if !any(any(imag(A)))      
    %ilustracja trajektorii w przestrzeni stanow (portret fazowy)
    f1=figure(1);
    hold on;
    set(f1,'Name','Portret fazowy','NumberTitle','off');
    rysuj_trajektorie(p0, A, 1, 25);

    %ilustracja obrazu z(theta)
    f2=figure(2);
    hold on;
    set(f2,'Name','Okrag jednostkowy Az(theta)','NumberTitle','off');
    okrag_jednostkowy(A,2);
end

if !any(any(imag(wektory_wl))) && !any(any(imag(widmo))) 
    %ilustracja wektorow lamda*v
    f3=figure(3);
    hold on;
    set(f3,'Name','Wektory wlasne podane','NumberTitle','off');
    rysuj_wektory(wektory_wl, widmo, 3);
end
if !any(any(imag(wekt_wl))) && !any(any(imag(wart_wl)))
    f4=figure(4);
    hold on;
    set(f4,'Name','Wektory wlasne z eig(A)','NumberTitle','off');
    rysuj_wektory(wekt_wl, [wart_wl(1,1) wart_wl(2,2)], 4);
end

if !any(any(imag(A)))
    %ilustracja pola wektorowego
    rangeX = linspace(-4,4,15);
    rangeY = linspace(-2,2,15);
    [pX pY] = meshgrid(rangeX,rangeY);
    f5=figure(5);
    hold on;
    set(f5,'Name','Pole wektorowe','NumberTitle','off');
    rysuj_pole_wektorowe(pX,pY,A,5);
end















