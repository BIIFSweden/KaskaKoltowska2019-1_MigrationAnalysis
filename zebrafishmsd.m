filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\1_nuclei.csv';
res = msd(filename);
figure
plot(res);
hold on
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\2_nuclei.csv';
res = msd(filename);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\3_nuclei.csv';
res = msd(filename);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\4_nuclei.csv';
res = msd(filename);
plot(res);
title('Mean Square Displacement (msd)')
xlabel('Slice')
ylabel('msd')
legend('mut1', 'mut2', 'mut3', 'mut4')
hold off

filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\5_nuclei.csv';
res = msd(filename);
figure
plot(res);
hold on
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\6_nuclei.csv';
res = msd(filename);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\7_nuclei.csv';
res = msd(filename);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\8_nuclei.csv';
res = msd(filename);
plot(res);
title('Mean Square Displacement (msd)')
xlabel('Slice')
ylabel('msd')
legend('cont5', 'cont6', 'cont7', 'cont8')
hold off
    
    