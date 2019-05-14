#lang sicp

; retorna x ao quadrado
(define (square x)
  (* x x))

; retorna o valor absoluto de x
(define (abs x)
  (if (< x 0) (- x) x))

; é bom o suficiente se a diferença entre o palpite ao quadrado menos o valor é menor que 0.01
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (good-enough2? guess x)
  (< (abs (- (average guess (/ x guess)) guess)) 0.001))

; média entre x e y
(define (average x y)
  (/ (+ x y) 2))

; palpite melhorado é a média entre o palpite antigo e o novo, que é o valor divido pelo palpite
(define (improve guess x)
  (average guess (/ x guess)))

; faz a raiz quadrada de x, pegando um valor como palpite para iniciar o cálculo
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(sqrt-iter 1.0 2)