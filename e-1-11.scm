#lang sicp

(define (f-recursive n)
  (if (< n 3)
    n
    (+ (f-recursive (- n 1))
       (* 2 (f-recursive (- n 2)))
       (* 3 (f-recursive (- n 3))))))

(define (f-iter a b c count)
  (if (= count 0)
    c
    (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))

(define (f-procedure n)
  (if (< n 3)
    n
    (f-iter 0 1 2 (- n 2))))

(f-recursive 7)
(f-procedure 7)
