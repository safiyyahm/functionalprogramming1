(DEFINE (reverse-general L) ;function definition: name and parameter (takes in a list called L)
        (COND ((NULL? L) '()) ;checks if list is empty; if so, returns empty parameter
              ((LIST? L) ;checks if the list is an actual list; if so, continues with reversal
               (append (reverse-general (cdr L)) (list(reverse-general (car L)))) ;uses append function with car and cdr to reverse list
               ) ;closes out condition for if function is a list
              (else L) ;used to return the list
        ) ;closes out conditional
) ;closes out funtion definition

(reverse-general '(a b (b f)))

(DEFINE (sum-up-numbers-simple L) ;function definition: name and parameter (takes in a list called L)
        (COND
         ((NULL? L) 0) ;returns 0 if entry is an empty list
         ((NOT (LIST? L)) 0) ;if L is not a list, returns 0
         ) ;closes out conditional 
)
         
(sum-up-numbers-simple '((100)))