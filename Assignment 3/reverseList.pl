reverse([],[]).
reverse([H|T],R):-
    reverse(T,RevT),
    concat(RevT,[H],R).

concat([],L,L).
concat([H|T],L2,[H|R]):-
    concat(T,L2,R).