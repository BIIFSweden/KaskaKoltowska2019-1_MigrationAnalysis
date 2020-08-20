do_leaders = false;
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\1_nuclei.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\1_tip.csv';
leader = 5;
res = msd6leaders(filename, tipfile, leader, do_leaders);
figure
plot(res);
hold on
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\2_nuclei.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\2_tip.csv';
leader = 5;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\3_nuclei.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\3_tip.csv';
leader = 6;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\4_nuclei.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\4_tip.csv';
leader = 3;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
title('Mean Square Displacement (msd) followers mutants')
xlabel('Slice')
ylabel('msd')
legend('mut1', 'mut2', 'mut3', 'mut4')
hold off

filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\5_nuclei.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\5_tip.csv';
leader = 2;
res = msd6leaders(filename, tipfile, leader, do_leaders);
figure
plot(res);
hold on
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\6_nuclei.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\6_tip.csv';
leader = 2;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\7_nuclei.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\7_tip.csv';
leader = 2;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
filename = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\8_nuclei.csv';
tipfile = 'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\8_tip.csv';
leader = 5;
res = msd6leaders(filename, tipfile, leader, do_leaders);
plot(res);
title('Mean Square Displacement (msd) followers controls')
xlabel('Slice')
ylabel('msd')
legend('cont5', 'cont6', 'cont7', 'cont8')
hold off
    
    