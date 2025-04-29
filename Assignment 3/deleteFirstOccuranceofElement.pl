delete1(X,[X|T],T).
delete1(X,[H|T],[H|R]):-
    delete1(X,T,R).