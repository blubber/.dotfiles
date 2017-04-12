
(require 'package)

(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar installed-packages
  '(better-defaults evil))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      installed-packages)

(global-linum-mode t)
(global-hl-line-mode 1)

(setq scroll-step            1
      scroll-conservatively  10000
      scroll-margin 5)



(evil-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (better-defaults)))
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 170 :width normal :foundry "nil" :family "Monaco"))))
 '(hl-line ((t (:inherit highlight))))
 '(trailing-whitespace ((t (:background "#00FFFF")))))
