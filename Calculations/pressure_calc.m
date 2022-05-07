density = 1; %kg/m^3
c = 1540;
U = 1; %m/s
w = 0;

wavelength = 2.5*10^-6;
k = 1/wavelength;
a = 3*10^-3;
r = [0:.001:1];
for t = 1:1000
pressure{t} = density*c*U*exp(1i*w*t)*(exp(-1i*k*r)-exp(-1i*k*sqrt(r.^2+a^2)));
end

figure()
plot(r,abs(pressure{1,1}))
saveas(gcf,'C:\Users\jtole\Box\BADER\BADER Students\2021\Toledo-Urena\Git_Test\test_site\jtoledo255.github.io\manuscript_images_test\pressure.png')