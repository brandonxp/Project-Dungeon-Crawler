;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname the_game) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define block (rectangle 50 50 "solid" "black"))
(define background (empty-scene 1000 1000))

(define-struct world (play))
(define-struct player (dir pos image))
(define player1 (make-player "north" (make-posn 100 100)(circle 10 "solid" "white")))
(define world0 (make-world player1))

(define (draw-handlers herp)
              (place-image (player-image (world-play herp)) 100 100 (place-image block 100 100 background)))

(define (tick-handler world)
  world0)

(big-bang world0
          (on-tick tick-handler)
          (on-draw draw-handlers))
//HERP DERP