function VV=GCLocDens(A,Kmax,Iter)
% function VV=GCLocDens(A,Kmax,Iter)
% Community detection by local density maximization
%
% Graph clustering by stoch. optimization of local  density.
% For details see the ComDet manual.
%
% INPUT
% A:      adjacency matrix of graph
% Kmax:   maximum number of clusters to consider
% Iter:   number of restarts of stochastic opt.
%
% OUTPUT
% VV:     N-ny-K matrix, VV(n,k) is the cluster to which node n belongs 
%         under the K-clusters clustering
%
% EXAMPLE
% [A,V0]=GGPlantedPartition([0 10 20 30 40],0.85,0.2,0);
% VV=GCLocDens(A,5,5);
%
N=size(A,1);
for n=1:N; A(n,n)=1; end
WriteGraph(A,'G.txt');
for K=1:Kmax
	test=1; save test.txt test -ascii
	WriteNum(K,'K.txt');
	WriteNum(Iter,'Iter.txt');
	!del VV1.txt
    
    if ~strfind('Windows',getenv('OS'))
        !Algorithms/QLD01 > VV1.txt
    else
        !Algorithms\QLD01 > VV1.txt
    end
    
	while test;test=load('test.txt');end
	load VV1.txt
	%size(VV1)
	VV1=reshape(VV1,N,Iter);
	for i=1:Iter
		Q(i)=QFLocDens(VV1(:,i),A);
	end
	[Qbst Ibst]=max(Q);
	VV(:,K)=VV1(:,Ibst);
end

!del VV1.txt
!del test.txt
!del Iter.txt
!del G.txt
!del K.txt
end
