(define rm-even-star
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
        (else (cond
          ((even? (car lat)) (rm-even-star (cdr lat)))
            (else (cons (car lat)
              (rm-even-star (cdr lat)))))))))

(print (rm-even-star '(2 4 6 8 10)))
(print (rm-even-star '(1 2 3 4 5)))
