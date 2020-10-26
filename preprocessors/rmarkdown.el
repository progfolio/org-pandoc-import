;;; org-pandoc-import/preprocessors/rmarkdown.el -*- lexical-binding: t; -*-

(defun org-pandoc-import-rmarkdown-preprocessor (in-file)
  (let ((processed-file (make-temp-file "opif" nil ".Rmd")))
    (call-process "sed" nil (list :file processed-file) nil "s/^```{/```\\n{/" in-file)
    (message processed-file)
  processed-file))
