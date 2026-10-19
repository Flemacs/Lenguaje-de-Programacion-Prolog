% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
% palindromo
palindromo([]).
palindromo([_]).
palindromo(Lista) :-
    ultimo(Lista, Ultimo),
    append([Pri|Medio], [Ultimo], Lista),
    Pri = Ultimo,
    palindromo(Medio).
ultimo([X], X).
ultimo([_|Resto], X) :-
    ultimo(Resto, X).