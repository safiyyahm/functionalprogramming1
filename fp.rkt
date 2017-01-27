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
         ((NOT (LIST? L)) 0) ;if L is not a list, returns 0 - prevents numbers in nested list from being added
         ((NOT (number? (car L))) (sum-up-numbers-simple (cdr L))) ;if first element is not a number, disregard and continue looking for numbers
         (ELSE (+ (car L) (sum-up-numbers-simple (cdr L)))) ; else - performs addition on numbers in list, recursively
         ) ;closes out conditional 
)
         
(sum-up-numbers-simple '(a 100 300 (100)))

(DEFINE (sum-up-numbers-general L) ;function definition: name and parameter (takes in a list called L)
        (COND
         ((NULL? L) 0) ;returns 0 if entry is an empty list
         ((NOT (number? (car L))) (sum-up-numbers-general (cdr L))) ;if first element is not a list, disregard and continue looking for numbers
         ((LIST? L) ;checks if L is a list
          (+ (car L) (sum-up-numbers-general (cdr L)))) ;performs summation of L
          ((LIST? L) ; *should check if there is a list within the list
           (car L) (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general(cdr L)))) ;adds numbers in nested list to sum of list
        )
)

(sum-up-numbers-general '(100 a 200 (200)))

(DEFINE (min L)
        (COND
         ((NOT (number? (car L))) (sum-up-numbers-general (cdr L)))
         ((NULL? (cdr L)) (car L))
         ((< (car L) (min (cdr L))) (car L))
         (ELSE (min (cdr L)))
         )
)


;(DEFINE (min-above-min LI L2) ;function def: name and parameter (takes in two lists called L1 and L2)

;)

