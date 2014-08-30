;; prefs.el -- just setting some preferences

;;; Code:

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; be moar like vim + ctrlp plz
(define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)

;; wombat is nice
(load-theme 'wombat t)

;; syntax checkin'
(setq-default js2-show-parse-errors nil)
(setq-default js2-strict-missing-semi-warning nil)
(setq-default js2-strict-trailing-comma-warning nil)

(add-hook 'js2-mode-hook (lambda ()
                          (setq-default flycheck-eslint-rulesdir
                            "/Users/jessekeane/Projects/UA/ua-style/lib/rules")
                          (setq-default flycheck-eslintrc
                            "/Users/jessekeane/Projects/UA/ua-style/config.json")
                          (flycheck-select-checker 'javascript-eslint)
                          (flycheck-mode)))


;; ctrlp emu
(setq projectile-completion-system 'grizzl)

;; stop it, emacs
(menu-bar-mode -1)

;; 80 column lines are nice.
(column-marker-2 80)

;; node repl
(setq inferior-js-program-command "node")

;; prefs end here
