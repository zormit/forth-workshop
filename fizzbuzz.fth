: FB ( n -- )
    1 +
    1           \ 1 n+1
    DO          \ loop 1..n inclusive
        -1      \ neither divisible by 3 nor 5 conditional
        I 3 MOD
        0 = IF
            DROP 0 \ modulo happened. don't print n
            ." FIZZ"
        THEN
        I 5 MOD
        0 = IF
            DROP 0 \ modulo happened. don't print n
            ." BUZZ"
        THEN
        IF
            I .
        ELSE
            SPACE
        THEN
    LOOP ;
