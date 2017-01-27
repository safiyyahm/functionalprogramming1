(DEFINE (reverse-general L) ;function definition: name and parameter (takes in a list called L)
        (COND ((NULL? L) '()) ;checks if list is empty; if so, returns empty parameter
              ((LIST? L) ;checks if the list is an actual list; if so, continues with reversal
               (append (reverse-general (cdr L)) (list(reverse-general (car L)))) ;uses append function with car and cdr to reverse list
               ) ;closes out condition for if function is a list
              (else L) ;used to return the list
        ) ;closes out conditional
) ;closes out funtion definition


(DEFINE (sum-up-numbers-simple L) ;function definition: name and parameter (takes in a list called L)
        (COND
         ((NULL? L) 0) ;returns 0 if entry is an empty list
         ((NOT (LIST? L)) 0) ;if L is not a list, returns 0 - prevents numbers in nested list from being added
         ((NOT (number? (car L))) (sum-up-numbers-simple (cdr L))) ;if first element is not a number, disregard and continue looking for numbers
         (ELSE (+ (car L) (sum-up-numbers-simple (cdr L)))) ; else - performs addition on numbers in list, recursively
         ) ;closes out conditional 
) ;closes out function
        

(DEFINE (sum-up-numbers-general L) ;function definition: name and parameter (takes in a list called L)
        (COND
         ((NULL? L) 0) ;returns 0 if entry is an empty list
         ((LIST? (car L)) (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L)))) ;summation of numbers in list
         ((number? (car L)) (+ (car L) (sum-up-numbers-general (cdr L)))) ;checks if value in list is a number; if so, continues with summation
         (ELSE (sum-up-numbers-general (cdr L))) ;else statement continues summation if other conditions are not fulfilled
         );closes out conditional
);closes out function definition


(DEFINE (mini L) ;helper function to get the minimum value in a list
        (COND
         ((NULL? L) '()) ;checks for an empty list - if empty, return empty parentheses
         ((NOT (number? (car L))) (mini (cdr L))) ;checks for any non numerical values
         ((NULL? (cdr L)) (car L)) ;condition checks for 1 value in list; if there is only one value, it returns said value
         ((< (car L) (mini (cdr L))) (car L)) ;compares values to find minimum
         (ELSE (mini (cdr L)))
         ) ;closes out conditional
) ;closes out function

(DEFINE (combinel L1 L2) ;helper function to combine 2 lists into one
        (IF (NULL? L1) L2 ;if L1 is empty, return L2
            (IF (NULL? L2) L1 ;if L2 is empty, return L1
                (CONS (car L1) (CONS (car L2) (combinel (cdr L1) (cdr L2)))) ;operations that combine the 2 lists into one list
            )
        )
)


(DEFINE (min-above-min L1 L2) ;function def: name and parameter (takes in two lists called L1 and L2)
        (IF (NULL? L1) #F ;return False if L1 does not have any values
            (IF (NULL? L2) (mini '(L1)) ;return minimum value in L1 if L2 is empty
                (combinel '(L1) '(L2))
            ) ;close first if statement
         ) ;close second if statement
         
) ;closes out function

