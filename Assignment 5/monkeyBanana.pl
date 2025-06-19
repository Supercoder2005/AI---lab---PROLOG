%Action rules (transition between states)
%State(MonkeyPosition,MonkeyState,BoxPosition,BananaState)
%MonkeyPosition: atdoor/middle/atwindow
%MonkeyState: onbox/onfloor
%BoxPOsition: atdoor/middle/atwindow
%BananaState: has/hasnot

%Action : walk
act(state(atdoor,onfloor,atwindow,hasnot),walk(atdoor,atwindow),state(atwindow,onfloor,atwindow,hasnot)).
%Action : push
act(state(atwindow,onfloor,atwindow,hasnot),push(atwindow,middle),state(middle,onfloor,middle,hasnot)).
%Action : climb
act(state(middle,onfloor,middle,hasnot),climb,state(middle,onbox,middle,hasnot)).
%Action : grasp
act(state(middle,onbox,middle,hasnot),grasp,state(middle,onbox,middle,has)).

%Recursive function
%base case : Monkey reached the goal state
canget(state(_,_,_,has)).

canget(State1):-
    act(State1,Action,State2), %Perform an action
    write('Monkey does:'),write(Action),nl,
    write('New state:'),write(State2),nl,nl,
    canget(State2).

%initial call
go:-
    canget(state(atdoor,onfloor,atwindow,hasnot)).
