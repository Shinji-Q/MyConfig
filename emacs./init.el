;; setting up interface

(tool-bar-mode -1)     ; settup the ui elements
(menu-bar-mode 1)      ; menubar still activated while getting used to the keybindings and functions
(scroll-bar-mode -1)
(hl-line-mode 1)       ;
(blink-cursor-mode 1)  ;

(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8-unix)
;; linhas que de fato funcionaram 
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
(setq tab-width 2)
		

(setq initial-buffer-choice "~/.emacs.d/init.el")

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

(setq inhibit-startup-screen t)

(add-to-list	'default-frame-alist
		'(font . "Cascadia Mono-14"))


    ;; visible notification and disable "beep"
(setq visible-bell 1)


;; include non-gnu packages
(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
;; making sure "use-package" is installed
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-always-ensure t)


(use-package evil
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)
  (setq evil-shift-width 2)
  )

(use-package command-log-mode)
(require 'org)
(use-package org-auto-tangle)
(use-package org-bullets)
(use-package org
  :config
  :hook (org-bulltes-mode org-indent-mode org-auto-tangle-mode)
  )



(use-package lsp-java :config (add-hook 'java-mode-hook #'lsp))

;; external
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(monokai))
 '(custom-safe-themes
   '("95b0bc7b8687101335ebbf770828b641f2befdcf6d3c192243a251ce72ab1692" default))
 '(package-selected-packages
   '(lsp-java org-auto-tangle org-bullets treemacs-evil command-log-mode use-package treemacs monokai-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


