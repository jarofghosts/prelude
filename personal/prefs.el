;; prefs.el -- just setting some preferences

;;; Code:
(define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)

(load-theme 'wombat t)

(menu-bar-mode -1)
(require 'column-marker)
(column-marker-1 80)

(require 'js-comint)
(setq inferior-js-program-command "node")

;; prefs end here
