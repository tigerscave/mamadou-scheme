(define make-lat
  (lamda (a b c)
    (cons a(cons b(cons c())))))
(print (make-lat 2 3 4))
(print (make-lat 2 4 6 8 10))
