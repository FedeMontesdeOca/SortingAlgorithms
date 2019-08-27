% Insert sort, to run it [insert]. then insertsort([list],S).

insertsort(List,Sorted):-isort(List,[],Sorted).
isort([],A,A).
isort([H|T],A,Sorted):-insert(H,A,NA),isort(T,NA,Sorted).
   
insert(X,[Y|T],[Y|NT]):-X>Y,insert(X,T,NT).
insert(X,[Y|T],[X,Y|T]):-X=<Y.
insert(X,[],[X]).