(define count
  (lambda (a lat)
    (cond
    ((null? lat) 0)
    (else cons (car lat) (lat cdr))))
(print (count 'apple '(apple banana orange)))
