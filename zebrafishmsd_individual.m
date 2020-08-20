
filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\1_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\2_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\3_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\4_nuclei.csv'};
figure
hold on
msd_individual(filenames, {'mut1', 'mut2', 'mut3', 'mut4'});
title('Individual tracks (mutants)')
xlabel('x')
ylabel('y')
legend()
hold off

filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\5_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\6_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\7_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\8_nuclei.csv'};
figure
hold on
msd_individual(filenames, {'cont5', 'cont6', 'cont7', 'cont8'});
title('Individual tracks (controls)')
xlabel('x')
ylabel('y')
hold off
    
    