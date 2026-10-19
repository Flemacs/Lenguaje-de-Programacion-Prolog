% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
produc([], [], 0).
produc([X|R1], [Y|R2], P) :-
    produc(R1, R2, P1),
    P is P1 + X * Y.