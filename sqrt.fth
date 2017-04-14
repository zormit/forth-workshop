: SQRT ( sq -- rt)
    0           \ n 0
    TUCK        \ 0 n 0
        DO      \ 0
            1+  \ 1
            DUP \ 1 1
            2*  \ 1 2
            1+  \ 1 3
        +LOOP
    ;
