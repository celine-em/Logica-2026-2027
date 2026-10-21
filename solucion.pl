%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Archivo para completar por el alumnos %%


%% alumno(+Nombre, +Correo, +Grado) is det.
%
%  Representa un alumno de la asignatura.
%
%  @param +Nombre: Nombre completo del alumno.
%  @param +Correo: Correo electrónico institucional.
%  @param +Grado:  Grado del alumno (Ciber | IA).

alumno('Celine Elisa Mihailescu Vlad', 'jc.mihailescu.2024@alumnos.urjc.es', 'Ciber').

%%xd
%% Este ejercicio esta ya resuelto
proof(ejercicio01,
      [
          'Premisa'(1),
          'E' and b(1),
          'Premisa'(2),
          'Premisa'(3),
          'E' or (2, 3, 4),
          'E' and a(1),
          'I' and (6, 5)
      ]).

proof(ejercicio02,
      [
         'Premisa'(1),
            'I' ! (1),
            'E' ! (2)
      ]).

proof(ejercicio03,
      [
           'Premisa'(1),
            'Premisa'(2),
            'Supuesto'(p and q),
            'E' --> (1,3),
            'E' and a(3),
            'E' and b(3),
            'I' and (4,2),
            'I' --> (3,7),
            'I' ! (8),
            'DeMorganA'(9)
      ]).

proof(ejercicio04,
      [
        'Premisa'(1),
        'Premisa'(2),
        'Premisa'(3),
        'Premisa'(4),
        'MT'(2,4),
        'Corte'(1,5),
        'E' --> (3,6)
      ]).

proof(ejercicio05,
      [
        'Premisa'(1),
        'Premisa'(2),
        'Premisa'(3),
        'Supuesto'(p),
        'Supuesto'(q),
        'I' --> (5,4),
        'I' --> (4,4),
        'Supuesto'(p),
        'E' --> (1,8),
        'Corte'(9,2),
        'I' and (10,3),
        'I' --> (8,11),
        'I' ! (12)
      ]).

proof(ejercicio06,
      [
      'Premisa'(1),
      'Supuesto'(p and !r),
      'E' and a(2),
      'E' and b(2),
      'Supuesto'(q),
      'I' and (3,5),
      'E' --> (1,6),
      'I' and (7,4),
      'I' --> (5,8),
      'I' ! (9),
      'I' --> (2,10)
      ]).

proof(ejercicio07,
      [
      'Premisa'(1),
      'Premisa'(2),
      'Premisa'(3),
      'Supuesto'(!r),
      'Corte2'(3,4),
      'Corte2'(2,4),
      'Corte2'(1,5),
      'I' and (7,6),
      'I' --> (4,8),
      'I' ! (9),
      'E' ! (10)
      ]).

% Incluir el resto de demostraciones

rule( 'MT',
      [
          FA --> FB,
          !FB
      ],
      !FA,
      [
          'Premisa'(1),
          'Premisa'(2),
          'Supuesto'(FA),
          'E' --> (1, 3),
          'I' and (4, 2),
          'I' --> (3, 5),    
          'I' ! (6)
      ]
    ).
    
rule( 'Corte' , 
    [
        FA or FB,
        !FA

    ],
    FB,
    [
         'Premisa'(1),
        'Premisa'(2),
        'Supuesto'(FA),
        'I' and (3,2),
        'Supuesto'(!FB),
        'I' --> (5,4),
        'I' ! (6),
        'E' ! (7),
        'I' --> (3,8),
        'Supuesto'(FB),
        'I' --> (10,10),
        'E' or (1,9,11)
    ]).

rule( 'Corte2' , 
    [
        FA or FB,
        !FB

    ],
    FA,
    [
        'Premisa'(1),
        'Premisa'(2),
        'Supuesto'(FB),
        'I' and (3,2),
        'Supuesto'(!FA),
        'I' --> (5,4),
        'I' ! (6),
        'E' ! (7),
        'I' --> (3,8),
        'Supuesto'(FA),
        'I' --> (10,10),
        'E' or (1,11,9)
    ]).

rule('DeMorganA', [
        !(FA and FB)
    ],
    !FA or !FB,
    [
        'Premisa'(1),
        'Supuesto'(!(!FA or !FB)),
        'Supuesto'(FA),
        'Supuesto'(FB),
        'I' and (3,4),
        'I' and (5,1),
        'I' --> (4,6),
        'I'!(7),
        'I' or b(!FA,8),
        'I' and (9,2),
        'I' --> (3,10),
        'I' !(11),
        'I' or a(12,!FB),
        'I' and (13,2),
        'I' --> (2,14),
        'I'!(15),
        'E'!(16)
    ]).

%% Incluir reglas derivadas con el predicado rule/4    
%
% rule(+Nombre, +Premisas, +Consecuente, +Demostracion)
