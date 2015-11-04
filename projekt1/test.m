 [x, y] = meshgrid (1:2:20);
          h = quiver (x, y, sin (2*pi*x/10), sin (2*pi*y/10));
          set (h, "maxheadsize", 0.33);

