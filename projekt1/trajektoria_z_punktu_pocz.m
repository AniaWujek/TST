function traj = trajektoria_z_punktu_pocz(ppocz, macierzA, liczba_krokow)

    traj = [];
    traj = ppocz';
    for i = 1:liczba_krokow
        traj=[traj;(macierzA^i*ppocz)'];
    end
end
