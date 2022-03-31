
filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\9_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\10_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\11_nucleitracks.csv'};
figure
hold on
msd_individual(filenames, {'mafba9', 'mafba10', 'mafba11'});
title('Individual tracks (mafba)')
xlabel('x')
ylabel('y')
legend()
hold off

filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\12_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\13_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\14_nucleitracks.csv'};
figure
hold on
msd_individual(filenames, {'mafbb12', 'mafbb13', 'mafbb14'});
title('Individual tracks (mafbb)')
xlabel('x')
ylabel('y')
hold off
    
    