% Quick sort To run: in prolog [quick]. then quicksort([list],S).

quicksort([], []).
quicksort([H | T], S) :- partition(H, T, L, R), quicksort(L, SL),quicksort(R, SR),append(SL, [H| SR], S).

partition(P, [], [], []).
partition(P, [H | T], [H | L], R) :- H @=< P, partition(P, T, L, R).
partition(P, [H | T], L, [H | R]) :- H @> P, partition(P, T, L, R).

append([], L, L).
append([H | L1], L2, [H | L3]) :- append(L1, L2, L3).


