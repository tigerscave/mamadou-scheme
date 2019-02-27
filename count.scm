(define count
  (lambda (a lat)
    (cond
    ((null? lat) 0)
    ((eq? (car lat) a) (+ 1 (count a (cdr lat))))
    (else (count a (cdr lat))))))
(print (count 'orange '(apple banana orange)))
(print (count 'a '(a b a d a a s)))
