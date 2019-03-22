(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
            ((eq? (car lat) old)
              (cons new
                (cons old (cdr lat))))
            (else (cons (car lat)
                  (insertL new old (cdr lat)))))))))

;(ice cream with topping fudge for dessert)
(print (insertL 'topping 'fudge '(ice cream with fudge for dessert)))
(print (insertL 'a 'b '(a c d f)))
