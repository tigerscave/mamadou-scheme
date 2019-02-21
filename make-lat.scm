(define make-lat
  (lambda (a b c)
    (cons a(cons b(cons b())))))
(print (make-lat 'apple 'orange 'banana))
(print (make-lat 'hoge 'fuga 'piyo))
(print (make-lat 1 2 3))
