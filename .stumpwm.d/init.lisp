(in-package :stumpwm)
(ql:quickload "clx-truetype")
(load-module "ttf-fonts")
(load-module "battery-portable")
(load-module "wifi")
(load-module "app-menu")
(load "~/.stumpwm.d/colors.lisp")

(setf *startup-message* "o/")

(set-font (make-instance 'xft:font
                         :family "JetBrains Mono Light"
                         :subfamily "Regular"
                         :size 10
                         :antialias t))

(setf
    *mode-line-position* :bottom
    *screen-mode-line-format* (list 
      "%v^> %I | bat ^b"
      '(:eval (bar-zone-color (parse-integer (string-trim '(#\Newline) (run-shell-command
        "awk '{ print int(($0 - 575000) / 17250) }' /sys/class/power_supply/BAT0/charge_now" t
      ))) 90 50 20 t))
      '(:eval (string-trim '(#\Newline) (run-shell-command
        "awk '{ print int(($0 - 575000) / 17250) }' /sys/class/power_supply/BAT0/charge_now" t
       ))) "%%^n | "
       "^5*%d "
    )
    wifi:*wifi-modeline-fmt* "^2*online^n"
    *window-format* "%n: %25t"
    *time-modeline-string* "%a %b %e %H:%M:%S"
    *mode-line-timeout* 1

    *mode-line-highlight-template* "~A"
    *hidden-window-color* "^8*"
    *mode-line-background-color* latte0
    *mode-line-foreground-color* latte5
    *mode-line-border-color* latte4
    *mode-line-border-width* 0
    *mode-line-pad-y* 4
)
(when *initializing* (mode-line))

;;; message window
(set-bg-color latte0)
(set-fg-color latte5)
(set-border-color latte4)
(set-msg-border-width 0)
(setf *message-window-y-padding* 2
      *message-window-gravity* :top
      *input-window-gravity* :top )

;;; windows
(set-win-bg-color latte1)
(set-focus-color latte4)
(set-unfocus-color latte0)
(setf *mouse-focus-policy* :click
      *window-border-style* :thin
      *normal-border-width* 2 )

;;; prefix key
(run-shell-command "xmodmap -e 'clear mod4'" t)
(run-shell-command "xmodmap -e \'keycode 133 = F20\'") 
(set-prefix-key (kbd "F20"))

(setq app-menu:*app-menu*
      `(("Browser"
         ("Palemoon" "palemoon")
         ("Firefox" "firefox")
         ("Surf (tabbed)" "surft")
         )
        ("Reader (zathura)" "zathura")
        ("Audio (alsamixer)" "alsamixer")
        ("Resources (gotop)" "gotop")
        ("Terminal" "st")))

;;; keybinds
(define-key *root-map* (kbd "c") "run-shell-command 'st'")
(define-key *root-map* (kbd "z") "run-shell-command 'zathura'")
(define-key *root-map* (kbd "g") "run-shell-command 'palemoon'")
(define-key *root-map* (kbd "/") "show-menu")

