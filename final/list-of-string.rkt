;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname list-of-string) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
;; Well-formed self reference
;;  -at least one base case
;;  -at least one self reference case



;; Data Definition

;; ListOfString is one of:
;; - empty
;; - (cons String ListOfString)          <------ Recursive definition / Self-reference - lets us match arbitrarily long lists
;; interp. a list of string
(define LOS1 empty)
(define LOS2 (cons "Cavite" empty))
(define LOS3 (cons "Batangas" (cons "Cavite" empty)))

#;
(define (fn-for-los los)
  (cond [(empty? los) (...)]
        [else (... (first los)    ; String
              (fn-for-los (rest los)))]))  ; List of String  ---> Needs natural recursion


;; Template rule used:
;; -one of: 2 cases
;; -atomic distinct: empty
;; -compound: (cons String ListOfString)



;; ListOfString -> Boolean
;; produces true if "Cavite" is in ListOfString, false otherwise
;(define (is-in? str los) true) ;stub

(check-expect (is-in? LOS1) false)
(check-expect (is-in? LOS3) true)

;; <used template from data definition>

(define (is-in? los)
  (cond [(empty? los) false]
        [else (if (string=? (first los) "Cavite")
                  true
                  (is-in? (rest los)))]))

