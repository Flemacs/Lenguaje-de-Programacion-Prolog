% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
%autentificador contraseña 
iniciar:-
    repeat,
    write('Ingrese contrasena: '),
    read(Clave),
    (
        Clave =:= 1234 ->
        write('Acceso permitido'), nl
    ;
        write('Contrasena incorrecta, intente otra vez'), nl,
        fail
    ).