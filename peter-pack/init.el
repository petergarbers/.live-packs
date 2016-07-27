;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                     ("marmalade" . "http://marmalade-repo.org/packages/")
                     ("melpa" . "http://melpa.org/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(when (not package-archive-contents)
  (package-refresh-contents))


(defvar my-packages '(dockerfile-mode
                      projectile))

;; Automaticaly install any missing packages
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


(live-load-config-file "bindings.el")
(live-load-config-file "projectile.el")
(live-load-config-file "cosmetics.el")

(setq cider-use-local-resources nil)
