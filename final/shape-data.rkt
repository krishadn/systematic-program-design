;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname shape-data) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
(require 2htdp/image)


;; Data Definition

;; RegularPolygon is Integer[3,5]
;; interp. number of sides of regular polygon: 3 - triangle, 4 - square, 5 - pentagon

;; NOTE
;; it could have been (regular-polygon l side m c)
;; with the side defined to be either 3, 4, or 5
;; but there was no way to extract the number of side
;; to determine what kind of polygon it is

(define RP1 3) ; triangle
(define RP2 4) ; square
(define RP3 5) ; pentagon

#;
(define (fn-for-rp rp)
  (... rp))


;; Template rule used:
;; - atomic non-distinct: interval Integer[3,5]


;; Functions:

;; RegularPolygon -> Image
;; produces a solid blue image of each regular polygon, with side length 20

;(define (render-regular-polygon rp) (square 0 "solid" "white"))

(check-expect (render-regular-polygon RP1) (regular-polygon 20 RP1 "solid" "blue"))
(check-expect (render-regular-polygon RP2) (regular-polygon 20 RP2 "solid" "blue"))
(check-expect (render-regular-polygon RP3) (regular-polygon 20 RP3 "solid" "blue"))

; template from data definition
(define (render-regular-polygon rp)
  (regular-polygon 20 rp "solid" "blue"))