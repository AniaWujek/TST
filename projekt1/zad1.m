% fajna macierz A=[0 1;-0.5 -0.3];A=[0 1;-0.08 -0.55];


close all;

range = linspace(-2,2,15);
[pX pY] = meshgrid(range,range);

widmo = [-0.27 -0.27];
A = macierz_z_widma(widmo);
%A=[0 1;-0.08 -0.55];
A=[0 1;-0.5 -0.3];




%p0 = [0 0;2 2;1.5 1.5;1 -1;1.5 -1.5;-1 1;-1.5 1.5;-1 -1;-1.5 -1.5];
p0 = generuj_punkty_pocz(1, 10)
rysuj_pole_wektorowe(pX,pY,A,1);
rysuj_trajektorie(p0, A, 2, 10);





