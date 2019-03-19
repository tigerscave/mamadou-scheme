
(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
        (else #f))))
(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))

  (print (lat? '((a b c d))))

  (print (lat? '()))
  (print (lat? '(apple banana orange)))
  (print (lat? '(a b c)))

  ;(print (insertLR 'apple 'banana '(banana orange)))
  ;(apple banana apple orange)
  ;(print (insertLR 'mango 'banana '(banana orange)))
  ;(mango banana mango orange)
  ;(print (insertLR 'a 'c '(b c)))
  ;(b a c a)

(define insertLR
  (lambda (new old l)
    (cons new (cons new l))))



(print '(insertLR mango banana (banana orange)))
(print (insertLR 'mango 'banana '(banana orange)))
(print '(insertLR apple banana (banana orange)))
(print (insertLR 'apple 'banana '(banana orange)))
(print (insertLR 'a 'c '(b c)))
