
filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\1_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\2_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\3_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Mutants - double hom\4_nuclei.csv'};
figure
hold on
[sumsM, sum2sM, nsM] = msd_individual0_plotmsd(filenames, {'mut1', 'mut2', 'mut3', 'mut4'});
title('Individual squared displacements (mutants)')
xlabel('track')
ylabel('squared displacements')
hold off

filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\5_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\6_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\7_nuclei.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\Sibbling controls\8_nuclei.csv'};
figure
hold on
[sumsC, sum2sC, nsC] = msd_individual0_plotmsd(filenames, {'cont5', 'cont6', 'cont7', 'cont8'});
title('Individual squared displacements (controls)')
xlabel('track')
ylabel('squared displacements')
hold off

meansM = [];
meansC = [];
stdsM = [];
stdsC = [];
for i = 1:length(sumsM)
    meansM(i) = sumsM(i) / nsM(i);
    meansC(i) = sumsC(i) / nsC(i);
    stdsM(i) = sqrt(sum2sM(i)/nsM(i) - (sumsM(i)/nsM(i))^2);
    stdsC(i) = sqrt(sum2sC(i)/nsC(i) - (sumsC(i)/nsC(i))^2);
end

figure
hold on
plot(meansM, 'r-');
plot(meansC, 'b-');
plot(meansM - stdsM, 'r--');
plot(meansM + stdsM, 'r--');
plot(meansC - stdsC, 'b--');
plot(meansC + stdsC, 'b--');
title('Absolute distance')
xlabel('Slice')
ylabel('distance')
legend('mutants', 'controls')
hold off
    
    