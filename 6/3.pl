% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
union([], P, P).
union([X|R], P2, P) :-
    member(X, P2),
    union(R, P2, P).
union([X|R], P2, [X|P]) :-
    \+ member(X, P2),
    union(R, P2, P).