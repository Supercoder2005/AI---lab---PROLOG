list_insert(X,L,[X|L]).
list_insert(X,[H|T],[H|R]):-
    list_insert(X,T,R).