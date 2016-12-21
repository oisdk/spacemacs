<<<<<<< HEAD
;;; funcs.el --- rust Layer functions File for Spacemacs
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: NJBS <DoNotTrackMeUsingThis@gmail.com>
=======
;;; funcs.el --- Rust Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Chris Hoeppner <me@mkaito.com>
>>>>>>> master
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

<<<<<<< HEAD
(defun spacemacs/racer-describe ()
  "Show a *Racer Help* buffer for the function or type at point.
If `help-window-select' is non-nil, also select the help window."
  (interactive)
  (let ((window (racer-describe)))
    (when help-window-select
      (select-window window))))

(defun spacemacs/rust-quick-run ()
  "Quickly run a Rust file using rustc.
Meant for a quick-prototype flow only - use `spacemacs/open-junk-file' to
open a junk Rust file, type in some code and quickly run it.
If you want to use third-party crates, create a a new project using `cargo-process-new' and run
using `cargo-process-run'."
  (interactive)
  (let ((input-file-name (buffer-file-name))
        (output-file-name (concat temporary-file-directory (make-temp-name "rustbin"))))
    (compile
     (format "rustc -o %s %s && %s"
             (shell-quote-argument output-file-name)
             (shell-quote-argument input-file-name)
             (shell-quote-argument output-file-name)))))
=======
;; http://doc.crates.io/guide.html
(defun spacemacs/rust-cargo-build ()
  (interactive)
  (compile "cargo build"))

(defun spacemacs/rust-cargo-run ()
  (interactive)
  (compile "cargo run"))

(defun spacemacs/rust-cargo-test ()
  (interactive)
  (compile "cargo test"))

(defun spacemacs/rust-cargo-doc ()
  (interactive)
  (compile "cargo doc"))

(defun spacemacs/rust-cargo-clean ()
  (interactive)
  (compile "cargo clean"))
>>>>>>> master
