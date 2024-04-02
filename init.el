(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

;; Load my config from org
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("bbb13492a15c3258f29c21d251da1e62f1abb8bbd492386a673dcfab474186af" "eab123a5ed21463c780e17fc44f9ffc3e501655b966729a2d5a2072832abd3ac" "7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" default))
 '(package-selected-packages
   '(orderless marginalia vertico diminish spaceline company dashboard rainbow-delimiters rainbow-delimters hungry-delete switch-window avy smex org-bullets beacon spacemacs-theme which-key)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#262626" :foreground "#b2b2b2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 100 :width normal :foundry "PfEd" :family "firacode"))))
 '(marginalia-documentation ((t (:foreground "lawn green" :inherit completions-annotations))))
 '(marginalia-file-name ((t (:foreground "lawn green" :inherit marginalia-documentation)))))
