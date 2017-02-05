;;; packages.el --- shaders layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Alan Love <alan@cattes.us>
;; URL: https://github.com/ell
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GLPv3
<<<<<<< HEAD
(setq shaders-packages '(glsl-mode))
=======
(setq shaders-packages
      '(glsl-mode
        (company-glsl :location (recipe
                                 :fetcher github
                                 :repo "Kaali/company-glsl")
                      :toggle (and (configuration-layer/package-usedp 'company)
                                   (executable-find "glslangValidator")))))

(defun shaders/init-company-glsl ()
  (use-package company-glsl
    :defer t
    :init (spacemacs|add-company-backends
            :backends company-glsl
            :modes glsl-mode)))
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> syl20bnr/develop
=======
>>>>>>> syl20bnr/develop
=======
>>>>>>> syl20bnr/develop

(defun shaders/init-glsl-mode ()
  "Initialize GLSL mode"
  (use-package glsl-mode
    :mode (("\\.fsh\\'"  . glsl-mode)
           ("\\.vsh\\'"  . glsl-mode))))
