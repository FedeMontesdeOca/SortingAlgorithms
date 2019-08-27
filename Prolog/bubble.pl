% Bubble sort, to run it, [bubble]. then bubblesort([list],S).

bubblesort(List,Sorted):-bsort(List,[],Sorted).
bsort([],A,A).
bsort([H|T],A,Sorted):-bubble(H,T,NT,M),bsort(NT,[M|A],Sorted).
   
bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],M):-X>Y,bubble(X,T,NT,M).
bubble(X,[Y|T],[X|NT],M):-X=<Y,bubble(Y,T,NT,M).