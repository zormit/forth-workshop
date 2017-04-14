: FACTORIAL ( n -- n! )
    DUP \ n n
    BEGIN
        1 -    \ n n-1
        TUCK   \ n-1 n n-1
        *      \ n-1 acc
        SWAP   \ acc i
        DUP 2 < IF
            DROP
            EXIT
        THEN
    AGAIN ;
