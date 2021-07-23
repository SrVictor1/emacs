;; Remover boas vindas
(setq inhibit-startup-message t)

;; Remover Menus
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remover Barra de rolagem
(scroll-bar-mode -1)

;; Numeros nas linhas
(global-linum-mode t)

;; Tamanho da font
(set-face-attribute 'default nil :height 120)

;; Pacotes
(require 'package)
(setq package-anable-at-startup nil) ; desabilitar a inicialização automatica

;; MELPA - repositório
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))


(package-initialize) ; iniciar


;; Instalando o use package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Test De package 
(use-package try
  :ensure t)

;; Key maps
(use-package which-key
  :ensure t
  :config (which-key-mode)
  )

;; Autocomplete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

;; NeoTree
(use-package neotree
  :ensure t
  :bind (("C-\\" . 'neotree-toggle))
  :config
  (progn
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  ) ; soucer tree

(use-package all-the-icons
  :ensure t
  )

 
 ;; Elixir 
(use-package alchemist
  :ensure t)
(use-package elixir-mode
  :ensure t)

;; Atalhos
(global-set-key (kbd "<C-tab>") 'other-window)

;; MELPA CODIGOS AUTOMATICOS
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (all-the-icons neotree auto-complete alchemist elixir-mode try use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
