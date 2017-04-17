: .ZERO ( -- ) ." 0";
: .ONE ( -- ) ." 1";
: EVEN ( n -- n%2 ) 2 MOD ;
: HALF ( n -- n/2 ) 2 / ;
: .BIN ( n -- )
    BEGIN
        DUP
        EVEN IF
            .ONE
        ELSE
            .ZERO
        THEN
        HALF DUP
    WHILE REPEAT ;
