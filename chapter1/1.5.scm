(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; With normal order evaluation, the symbol "test" would be expanded with the
; body of "test", at which point the condition (= 0 0) would evaluate to true
; and yield 0. With applicative order evaluation, the symbol (p) would be expanded
; with the body of (p): (p). This would continue infinitely.
; Better explanation: http://community.schemewiki.org/?sicp-ex-1.5
