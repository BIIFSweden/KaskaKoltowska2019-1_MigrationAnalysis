filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\9_nucleitracks.csv';
figure
hold on
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\10_nucleitracks.csv';
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\11_nucleitracks.csv';
msd3(filename);
title('Relative displacement (mafba)')
xlabel('dx')
ylabel('dy')
hold off

filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\12_nucleitracks.csv';
figure
hold on
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\13_nucleitracks.csv';
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\14_nucleitracks.csv';
msd3(filename);
title('Relative displacement (mafbb)')
xlabel('dx')
ylabel('dy')
hold off
    
    