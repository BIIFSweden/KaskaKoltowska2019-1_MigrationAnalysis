
filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\9_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\10_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafba mutants\11_nucleitracks.csv'};
figure
hold on
[sumsM, sum2sM, nsM] = msd_individual0_plotmsd(filenames, {'mafba9', 'mafba10', 'mafba11'});
title('Individual squared displacements (mafba)')
xlabel('track')
ylabel('squared displacements')
hold off

filenames = {'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\12_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\13_nucleitracks.csv',
             'C:\Data\Projects\KaskaKoltowska2019-1\Data\mafbb mutants\14_nucleitracks.csv'};
figure
hold on
[sumsC, sum2sC, nsC] = msd_individual0_plotmsd(filenames, {'mafbb12', 'mafbb13', 'mafbb14'});
title('Individual squared displacements (mafbb)')
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
legend('mafba', 'mafbb')
hold off
    
    