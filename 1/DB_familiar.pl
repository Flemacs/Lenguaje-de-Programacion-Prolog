% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
progenitor(pablo, carlos).
progenitor(pablo, isabel).
progenitor(carlos, patricia).
progenitor(isabel, fernando).

muj(isabel).
muj(patricia).
hom(pablo).
hom(carlos).
hom(fernando).
abu(X, Y) :- progenitor(X, Z), progenitor(Z, Y).
tio(X, Y) :- progenitor(Z, Y), progenitor(W, Z), progenitor(X, W).

/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/
