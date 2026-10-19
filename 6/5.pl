% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
prom(L, P) :-
    sum(L, S),
    long(L, N),
    P is S / N.
sum([], 0).
sum([X|R], S) :-
    sum(R, S1),
    S is X + S1.
long([], 0).
long([_|R], N) :-
    long(R, N1),
    N is N1 + 1.