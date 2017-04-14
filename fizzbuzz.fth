: FB ( n -- )
    1           \ 1 n
    DO
        -1
        I
        3 MOD
        0 = IF
            0
            ." FIZZ"
        THEN
        I
        5 MOD
        0 = IF
            0
            ." BUZZ"
        THEN
        IF
            I .
        ELSE
            SPACE
        THEN
    LOOP
    ;
