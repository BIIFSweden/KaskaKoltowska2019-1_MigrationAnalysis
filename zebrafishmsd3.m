filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\1_nuclei.csv';
figure
hold on
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\2_nuclei.csv';
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\3_nuclei.csv';
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\4_nuclei.csv';
msd3(filename);
title('Relative displacement (mutants)')
xlabel('dx')
ylabel('dy')
hold off

filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\5_nuclei.csv';
figure
hold on
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\6_nuclei.csv';
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\7_nuclei.csv';
msd3(filename);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\8_nuclei.csv';
msd3(filename);
title('Relative displacement (controls)')
xlabel('dx')
ylabel('dy')
hold off
    
    