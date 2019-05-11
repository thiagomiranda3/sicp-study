#lang sicp

; incrementa o valor em 1
(inc 42)

; Cria a constante idade com o valor 24
(define idade 24)

; cond é o if do scheme. Cada operando é uma condição que recebe um predicado no primeiro parâmetro e a função no segundo
(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

; Exercício 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

; Exercício 1.3
(define (square x) (* x x))

(define (sum-square x y z)
  (cond ((and (>= x z) (>= y z)) (+ (square x) (square y)))
        ((and (>= x y) (>= z y)) (+ (square x) (square z)))
        ((and (>= y x) (>= z x)) (+ (square y) (square z)))))