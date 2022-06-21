filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\9_nucleitracks.csv';
res = msd(filename);
figure
plot(res);
hold on
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\10_nucleitracks.csv';
res = msd(filename);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\11_nucleitracks.csv';
res = msd(filename);
plot(res);
title('Mean Square Displacement (msd)')
xlabel('Slice')
ylabel('msd')
legend('mafba9', 'mafba10', 'mafba11')
hold off

filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\12_nucleitracks.csv';
res = msd(filename);
figure
plot(res);
hold on
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\13_nucleitracks.csv';
res = msd(filename);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\14_nucleitracks.csv';
res = msd(filename);
plot(res);
title('Mean Square Displacement (msd)')
xlabel('Slice')
ylabel('msd')
legend('mafbb12', 'mafbb13', 'mafbb14')
hold off
    
    