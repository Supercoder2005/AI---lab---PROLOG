member_check(X,[X|_]).
member_check(X,[_|T]):- member_check(X,T). 
