do_leaders = true;
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\9_nucleitracks.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\9_tip.csv';
leader = 1;
res = msd6leaders(filename, tipfile, leader, do_leaders);
figure
plot(res);
hold on
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\10_nucleitracks.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\10_tip.csv';
leader = 1;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\11_nucleitracks.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\11_tip.csv';
leader = 1;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
title('Mean Square Displacement (msd) leaders mafba')
xlabel('Slice')
ylabel('msd')
legend('mafba9', 'mafba10', 'mafba11')
hold off

filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\12_nucleitracks.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\12_tip.csv';
leader = 1;
res = msd6leaders(filename, tipfile, leader, do_leaders);
figure
plot(res);
hold on
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\13_nucleitracks.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\13_tip.csv';
leader = 3;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\14_nucleitracks.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\14_tip.csv';
leader = 1;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
title('Mean Square Displacement (msd) leaders mafbb')
xlabel('Slice')
ylabel('msd')
legend('mafbb12', 'mafbb13', 'mafbb14')
hold off
    
    