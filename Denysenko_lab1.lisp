
; Mark Denysenko IP-61
;lists
(SETQ l1 '(9 (() 8 88 888)))
(SETQ l2 '(H (J K L) (UJN)))
(SETQ l3 '(C B (N M I) (T Y U)))
;heads
(print (LIST (CAR l1) (CAR l2) (CAR l3)))

; elements
;   1) 2
;   2) 3
;   3) 3
(defun makeList (list1 list2 list3)
                "Make list by variant"
                (SETQ newList (LIST (SECOND list1) (THIRD list2) (THIRD list3)))
                (print newList))
(makeList l1 l2 l3)

; Write function, which calculate distance between X1 Y1 and X2 Y2
; Coordinates can be negative
(defun dist (x1 y1 x2 y2) (sqrt (+ (* (- x1 x2) (- x1 x2))
                                                      (* (- y1 y2) (- y1 y2)))
                                                      ))
(defun Distance (x1 y1 x2 y2)
    "Calculate distance between X1 Y1 and X2 Y2"
    (format t "~%Distance: ~d" (dist x1 y1 x2 y2)
    )
)                                                  
(Distance 2 2 3 3)