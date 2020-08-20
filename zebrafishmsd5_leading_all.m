nangles = 12;
filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\1_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\2_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\3_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\4_nuclei.csv'};
leaders = {5,5,6,3};
msd5leaders(filenames, nangles, leaders, 'mutants');

filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\5_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\6_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\7_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\8_nuclei.csv'};
leaders = {2,2,2,5};
msd5leaders(filenames, nangles, leaders, 'controls');
    
    