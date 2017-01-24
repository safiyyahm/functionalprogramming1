(DEFINE (reverse-general L) ;function definition: name & parameter (takes in a list called L)
        (if(NULL? L) '())   ;condition for empty list; if list is empty, return "()"
        (append (reverse-general (cdr L)) (list (car L)))     ;append function needed to reverse list
)