#lang sicp

; incrementa o valor em 1
(inc 42)

; Cria a constante idade com o valor 24
(define idade 24)

; compound procedures
(define (square x) (* x x))

; cond é o if do scheme. Cada operando é uma condição que recebe um predicado no primeiro parâmetro e a função no segundo
(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

