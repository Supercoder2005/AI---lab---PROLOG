% water jug problem
% X = 4L jug , Y = 3L jug
waterjug(X,Y):- X>4,Y<3,write("4L jug is overflowed."),nl.
waterjug(X,Y):- X<4,Y>3,write("3L jug is overflowed."),nl.
waterjug(X,Y):- X>4,Y>3,write("Both jugs are overflowed.").

waterjug(X,Y):-
    (   X=:=0,Y=:=0,nl,write("4L=0 & 3L=3 (Action:Pour water in 3L jug)"),YY is 3,waterjug(X,YY));
    (   X=:=0,Y=:=3,nl,write("4L=3 & 3L=0 (Action:Pour water from 3L jug to 4L jug)"),XX is 3,YY is 0,waterjug(XX,YY));
    (   X=:=3,Y=:=0,nl,write("4L=3 & 3L=3 (Action:Pour water in 3l jug"),YY is 3,waterjug(X,YY));
    (   X=:=3,Y=:=3,nl,write("4L=4 & 3L=2 (Action:Pour water from 3L jug to 4L jug"),XX is 4,YY is 2,waterjug(XX,YY));
    (   X=:=4,Y=:=2,nl,write("4L=0 & 3L=2 (Action:Empty water from 4L jug"),XX is 0,waterjug(XX,Y));
    (   X=:=0,Y=:=2,nl,write("4L=2 & 3L=0 (Action:Pour water from 3L jug to 4L jug"),XX is 2,YY is 0,waterjug(XX,YY));
    (   X=:=2,Y=:=0,nl,write("4L=2 & 3L=0 (Action:Goal state reached)")).

