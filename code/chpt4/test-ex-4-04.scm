;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;                    Author : ZhHy
;;                    Date   : 2010-08-11
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Test Exercise 4.4

;; load all the original necessary procedures in the text book
(load "chpt-4-1.scm")

;; load the modified EVAL procedure and extractors of the procedure expressions
;  which means 'operator' and 'operands'
(load "ex-4-04.scm")

;; define the global environment
(define the-global-environment (setup-environment))

;; test special operator 'and' and 'or'
;; test derived special operator 'and-derived' and 'or-derived'
(newline)
(display ";;; ******************** TEST ***************************************")
;; test special operators 'and' and 'or'
(newline)
(display ";;; TYPE the following expressions in order: ")
(newline)
(display ";;; 1- (and)")
(newline)
(display ";;; 2: (and 1)")
(newline)
(display ";;; 3: (and false)")
(newline)
(display ";;; 4: (and 1 2)")
(newline)
(display ";;; 5: (and 1 2 false)")
(newline)
(display ";;; 6: (and false undefined-variable)")
(newline)
(display ";;; 7: (and 1 3 false undefined-variable)")
(newline)
(display ";;; you should see in order: '#t 1 #f 2 #f #f #f'")
(newline)
(display ";;; -----------------------------------------------------------------")
(newline)
(display ";;; TYPE the following expressions in order: ")
(newline)
(display ";;; 1- (or)")
(newline)
(display ";;; 2: (or 1)")
(newline)
(display ";;; 3: (or false)")
(newline)
(display ";;; 4: (or false 2)")
(newline)
(display ";;; 5: (or 1 false)")
(newline)
(display ";;; 6: (or false false false false 5)")
(newline)
(display ";;; 7: (or false 3 undefined-variable)")
(newline)
(display ";;; you should see in order: '#f #t #f #t #t #t #t'")
(newline)
(display ";;; -----------------------------------------------------------------")
;; test derived operator 'and-derived' and 'or-derived'
(newline)
(display ";;; TYPE the following expressions in order: ")
(newline)
(display ";;; 1- (and-derived)")
(newline)
(display ";;; 2: (and-derived 1)")
(newline)
(display ";;; 3: (and-derived false)")
(newline)
(display ";;; 4: (and-derived 1 2)")
(newline)
(display ";;; 5: (and-derived 1 2 false)")
(newline)
(display ";;; 6: (and-derived false undefined-variable)")
(newline)
(display ";;; 7: (and-derived 1 3 false undefined-variable)")
(newline)
(display ";;; you should see in order: '#t 1 #f 2 #f #f #f'")
(newline)
(display ";;; -----------------------------------------------------------------")
(newline)
(display ";;; TYPE the following expressions in order: ")
(newline)
(display ";;; 1- (or-derived)")
(newline)
(display ";;; 2: (or-derived 1)")
(newline)
(display ";;; 3: (or-derived false)")
(newline)
(display ";;; 4: (or-derived false 2)")
(newline)
(display ";;; 5: (or-derived 1 false)")
(newline)
(display ";;; 6: (or-derived false false false false 5)")
(newline)
(display ";;; 7: (or-derived false 3 undefined-variable)")
(newline)
(display ";;; you should see in order: '#f #t #f #t #t #t #t'")
(newline)
(display ";;; ******************** TEST ***************************************")

;; run the mimic interpretator-derived
(driver-loop)