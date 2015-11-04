function traj = trajektoria_z_punktu_pocz(ppocz, macierzA, liczba_krokow)

    traj = [];
    traj = ppocz';
    for i = 2:liczba_krokow
        traj=[traj;(macierzA*traj(i-1,:)')'];
    end
end


%jest wzor na to, czy go wykorzystac?
%x(t) = PI(od k=0 do t-2)a(k)x_0 + SUMA(od r=0 do t-1)PI(od k=r+1 do t-1)a(k)g(r)
%kiedy x(t+1) = a(t)x(t)+g(t)
