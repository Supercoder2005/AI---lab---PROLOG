edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(c,g).

goal(f).
goal(g).

%dfs
dfs(Node,[Node]):- goal(Node). %base case
dfs(Node,[Node|Path]):-
    edge(Node,Next),
    dfs(Next,Path).

%bfs
bfs([[Node|Path]|_],Result):-
    goal(Node),
    reverse([Node|Path],Result).

bfs([[Node|Path]|Rest],Result):-
    findall(
        [Next,Node|Path],
        edge(Node,Next),
        Newpaths
           ),
    append(Rest,Newpaths,Queue),
    bfs(Queue,Result).

