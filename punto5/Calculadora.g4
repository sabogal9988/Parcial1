grammar Calculadora;

// Reglas léxicas (tokens)
NUMERO: [0-9]+ ('.' [0-9]+)?;  // Soporte para números enteros y decimales
SUMA: '+';
RESTA: '-';
MULTIPLICACION: '*';
DIVISION: '/';
POTENCIA: '^';
ASIGNACION: '=';
ABRIR_PAREN: '(';
CERRAR_PAREN: ')';
SENO: 'sin';
COSENO: 'cos';
TANGENTE: 'tan';

// Manejo de espacios en blanco (opcional)
ESPACIOS: [ \t\r\n]+ -> skip;  // Ignorar espacios en blanco

// Reglas sintácticas
inicio: (imprimirExpresion)* EOF;

imprimirExpresion: expresion;

expresion:   termino ((SUMA | RESTA) termino)*;
termino:     factor ((MULTIPLICACION | DIVISION) factor)*;
factor:      (RESTA)? base (POTENCIA factor)?;
base:        NUMERO | ABRIR_PAREN expresion CERRAR_PAREN | funcionTrigonometrica;

funcionTrigonometrica: (SENO | COSENO | TANGENTE) ABRIR_PAREN expresion CERRAR_PAREN;
