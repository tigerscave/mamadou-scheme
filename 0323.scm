(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? a (car lat))
              (member? a (cdr lat)))))))

(print (member? 'a '(a b)))
(print (member? 'apple '(banana orange)))
