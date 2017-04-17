: ZERO [CHAR] 0 SWAP ;
: ONE  [CHAR] 1 SWAP ;
: " [CHAR] " PARSE POSTPONE SLiteral ;

: EVEN ( n -- 0|-1 ) 2 MOD 0 = ;
: HALF ( n -- n/2 ) 2 / ;

: STRING 0 SWAP ; \ start zero terminated string
: .PRINT ( 0 ch ch ... --- ) BEGIN DUP WHILE EMIT REPEAT DROP ;
: .BIN ( n -- )
    STRING
    BEGIN
        DUP EVEN IF
            ZERO \ 0 ... "0" n
        ELSE
            ONE  \ 0 ... "1" n
        THEN HALF DUP
    WHILE REPEAT DROP
    .PRINT ;
