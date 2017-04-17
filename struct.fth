0 CONSTANT [STRUCT

: FIELD  ( offset n "name" -- offset+n )  \ runtime: ( addr -- addr_offset )
    CREATE
      OVER , +   \ lay offset and update
    DOES>
      @ +        \ addr offset to address
    ;

: STRUCT]  ( size "name" -- )  \ runtime: ( -- size )
    CONSTANT ;

: INT  ( addr -- addr+offset )
    1 CELLS FIELD ;

[STRUCT
    INT yearaddr
    INT monthaddr
    INT dayaddr
STRUCT] Date

: NewDate ( d m y  "name" -- ) \ runtime: ( -- addr )
    CREATE
      HERE >R
      Date ALLOT \ allocate struct (3 cells)
      R@ yearaddr !
      R@ monthaddr !
      R> dayaddr !
    DOES>
;

[STRUCT
    INT numberaddr
    INT zipaddr
STRUCT] Address

: NewAddress ( n z "name" -- ) \ runtime: ( -- addr )
    CREATE
      HERE >R
      Address ALLOT \ allocate struct
      R@ numberaddr !
      R> zipaddr !
    DOES>
;
