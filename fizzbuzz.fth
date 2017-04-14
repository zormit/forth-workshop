: FB ( n -- )
    1           \ 1 n
    DO
        I
        3 MOD
        0 = IF
            I
            5 MOD
            0 = IF
                ." FIZZBUZZ "
            ELSE
                ." FIZZ "
            THEN
        ELSE
            I
            5 MOD
            0 = IF
                ." BUZZ "
            ELSE
                I .
            THEN
        THEN
    LOOP
    ;
