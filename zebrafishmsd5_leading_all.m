nangles = 12;
filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\9_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\10_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\11_nucleitracks.csv'};
leaders = {1,1,1};
msd5leaders(filenames, nangles, leaders, 'mafba');

filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\12_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\13_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\14_nucleitracks.csv'};
leaders = {1,3,1};
msd5leaders(filenames, nangles, leaders, 'mafbb');
    
    