(define set?
  (lambda (lat)
    (cond
      ((null? lat) #t)
      ((member (car lat) (cdr lat)) #f)
      (else (set? (cdr lat))))))
(print (set? '( apple peaches apple plum)))
(print (set? '(apple peaches pears plums)))
(print (set? '()))
