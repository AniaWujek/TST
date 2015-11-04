close all
%hold on;
wielomian = [1,6,-4,-8,7];
zera = roots(wielomian);
r = 2.5;
theta = linspace(0,2*pi,360);
z = r * exp(1i * teta);

wartosci = [];
for i = 1:numel(z)
    wartosci(i) = polyval(wielomian,z(i));       
end

figure 1
hold on
xlim([min((real(wartosci))(:)) max((real(wartosci))(:))])
ylim([min((imag(wartosci))(:)) max((imag(wartosci))(:))])
plot(0,0,'r*')

figure 2
hold on
xlim([min((real(z))(:))-r/3 max((real(z))(:))+r/3])
ylim([min((imag(z))(:))-r/3 max((imag(z))(:))+r/3])
for wsp = zera
    plot(real(wsp),imag(wsp),'g*')
end

for i = 1:numel(wartosci)
    figure 1
    plot(real(wartosci(i)), imag(wartosci(i)))
    figure 2
    plot(real(z(i)), imag(z(i)))    
    pause(0.001)
end
