(defvar latte1 "#251c1c")
(defvar latte0  "#1c1415")
(defvar latte2  "#453a38")
(defvar latte3  "#655956")
(defvar latte4  "#9a8d88")
(defvar latte5  "#fff8e7")

(defvar latte6  "#df6576")
(defvar latte7  "#fbb494")
(defvar latte8  "#f9ff8f")
(defvar latte9  "#92fb8a")
(defvar latte10 "#59c980")
(defvar latte11 "#b0f8f7")
(defvar latte12 "#9ac8fb")
(defvar latte13 "#6979e7")
(defvar latte14 "#b768df")
(defvar latte15 "#efa4ed")

(setq *colors*
  `(,latte0
    ,latte6
    ,latte10
    ,latte8
    ,latte13
    ,latte14
    ,latte11
    ,latte5
    ,latte4
    ,latte2
))

(when *initializing* (update-color-map (current-screen)))

