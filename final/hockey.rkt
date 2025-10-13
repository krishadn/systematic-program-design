;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hockey) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))


(define-struct hockey-player (first last))


(define HP1 (make-hockey-player "MMM" "LLL"))

(hockey-player-last HP1)
(hockey-player-first HP1)
(hockey-player? HP1)