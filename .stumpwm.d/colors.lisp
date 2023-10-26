(defvar latteBG "#251c1c")
(defvar latte0  "#1c1415")

(defvar latte1  "#df656a")
(defvar latte2  "#52df6b")
(defvar latte3  "#e7d272")
(defvar latte4  "#697ee7")
(defvar latte5  "#b568df")
(defvar latte6  "#5edced")

(defvar latte7  "#9a8d88")
(defvar latte8  "#453a38")

(defvar latte9  "#fbb194")
(defvar latte10 "#8afb8a")
(defvar latte11 "#f9ff8f")
(defvar latte12 "#9ab3fb")
(defvar latte13 "#e398fb")
(defvar latte14 "#8efbf9")

(defvar latte15 "#fff8e7")

(setq *colors*
  `(,latte0
    ,latte1
    ,latte2
    ,latte11
    ,latte4
    ,latte5
    ,latte6
    ,latte15
    ,latte8
    ,latte7
))

(when *initializing* (update-color-map (current-screen)))

