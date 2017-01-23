echo on

[A,V0]=GGGirvanNewman(32,4,13,3,0);
VV=GCStabilityOpt(A,[0.1:0.4:2.5]);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGGirvanNewman(32,4,13,3,0);
VV=GCAFG(A,[3.0:-0.5:0.1]);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGGirvanNewman(32,4,16,0,0);
VV=GCDanon(A);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCGloDens(A,5,5);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCHSLSW(A,[3:-0.5:0.1]);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCLFK(A,[3:-0.5:0.1]);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCLocDens(A,5,5);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCModulMax1(A);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCModulMax2(A);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCModulMax3(A);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCNodMemb(A,5,5);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCReichardt(A,[3:-0.5:0.1]);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCRonhovde(A,[0.5:-0.05:0.05]);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCSpectralClust1(A,6);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=QFNodMemb(V,A)
pause(0.1)

%[A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
VV=GCSpectralClust2(A,6,10);
Kbst=CNNodMemb(VV,A,1);
V=VV(:,Kbst);
figure(1); plot([V0 VV(:,Kbst)])
Q=PSJaccard(V,V0)
Q=PSNMI(V,V0)
Q=PSRand(V,V0)
Q=PSRelCluNumError(V,V0)
Q=QFDistBased(V,A)
Q=QFGloDens(V,A)
Q=QFLocDens(V,A)
Q=QFModul(V,A)
Q=QFNodMemb(V,A)
CV=CVIdx(V,A)

echo off