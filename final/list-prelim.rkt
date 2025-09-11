;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname list-prelim) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))


(define L1 (cons "!!!" (cons "World" (cons "Hello" empty))))

(first (rest L1))


(empty? L1)

(length L1)

(last L1)


