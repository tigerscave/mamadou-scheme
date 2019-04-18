(define rember*
  (lambda (a l)
    (cond
      ((null? l) (quote ()))
      ((atom? (car l))
        (cond
          ((eq? (car l) a)
            (rember* a (cdr l)))
          (else (cons (car l)
                  (rember* a (cdr l))))))
      (else (cons (rember* a (car l))
              (rember* a (cdr l)))))))
(define atom?
  (lambda (x)
  (and (not (null? x)) (not (pair? x)))))

(print (rember* 'apple '(apple banana orange)))
(print (rember* 'apple '(apple banana apple)))
(print (rember* 'apple '(apple (banana apple))))

(define rm-even*
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      ((even? (car lat)) (rm-even* (cdr lat)))
      (else (cons (car lat)
              (rm-even* (cdr lat)))))))

(print (rm-even* '(2 4 6 8 10)))
(print (rm-even* '(1 2 3 4 5)))
(print (rm-even* '(1 2 3 4)))
(print (rm-even* '(1 2 3 4)))
(print (rm-even* '(2 4 6 8)))

(define sum-tup*
  (lambda (tup)
    (cond
      ((null? tup) 0)
      (else (+ (car tup) (sum-tup* (cdr tup)))))))

(print (sum-tup* '(1 2 3 4)))
(print (sum-tup* '(12 32 48 6)))

(define tup-sum
  (lambda (tup)
    (cond
      ((null? tup) 0)
      (else (+ (car tup) (tup-sum (cdr tup)))))))

(print (tup-sum '(1 2 3 4)))
(print (tup-sum '(2 4 6 8)))
