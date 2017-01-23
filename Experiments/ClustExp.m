%%...Clustering Experiment...
%...2014.2.15-13:24:31...
%% Graph Function: 
%     GGPlantedPartition
%% Algorithms:
%    1. GCModulMax1
%    2. GCModulMax2
%    3. GCModulMax3
%% Cluster Number Selection: 
%     CNLocDens
%% Evaluation: 
%     QFNodMemb
%%

%%set seed
set_seed(316);

%%loop options
iters = 1;
parameter = 0:0.05:0.25;


%%result variables
a1 = zeros(length(parameter),1);
tmpa1 = zeros(iters,1);

a2 = zeros(length(parameter),1);
tmpa2 = zeros(iters,1);

a3 = zeros(length(parameter),1);
tmpa3 = zeros(iters,1);

%%main loop
for i = 1:length(parameter)
  for j = 1:iters
    [A, V0] = GGPlantedPartition([0 20 30 60 70],1-parameter(i),parameter(i),1);

    VV = GCModulMax1(A);
    CN = CNLocDens(VV,A);

    %%choose the cluster number
    q = 1;
    VV_size = size(VV);
    for l = 1:VV_size(2)
       if CN == length(unique(VV(:,l)))
          q = l;
          break;
       end
    end
    V = VV(:,q);

    tmpa1(j) = QFNodMemb(V,A);

    VV = GCModulMax2(A);
    CN = CNLocDens(VV,A);

    %%choose the cluster number
    q = 1;
    VV_size = size(VV);
    for l = 1:VV_size(2)
       if CN == length(unique(VV(:,l)))
          q = l;
          break;
       end
    end
    V = VV(:,q);

    tmpa2(j) = QFNodMemb(V,A);

    VV = GCModulMax3(A);
    CN = CNLocDens(VV,A);

    %%choose the cluster number
    q = 1;
    VV_size = size(VV);
    for l = 1:VV_size(2)
       if CN == length(unique(VV(:,l)))
          q = l;
          break;
       end
    end
    V = VV(:,q);

    tmpa3(j) = QFNodMemb(V,A);

  end
a1(i) = mean(tmpa1);
a2(i) = mean(tmpa2);
a3(i) = mean(tmpa3);
end

%%plotting
plot(parameter,a1,'b-x'); hold on;
plot(parameter,a2,'b-x'); hold on;
plot(parameter,a3,'b-x'); hold on;

title('Clustering Experiment');
