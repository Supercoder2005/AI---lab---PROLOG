% tower of hanoi problem
move(1,Source,Destination,_):-
    write('Move top disk from '),write(Source),write(' to '),
    write(Destination),nl.
move(N,Source,Destination,Auxilliary):-
    N>1,
    N1 is N-1,
    move(N1,Source,Auxilliary,Destination),
    move(1,Source,Destination,_),
    move(N1,Auxilliary,Destination,Source).
