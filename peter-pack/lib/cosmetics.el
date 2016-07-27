(defun set-cursor-type (cursor)
 "Modify the cursor to the specified type"
 (interactive "sCursor type (bar, box, etc.): ")
 (modify-frame-parameters
  (selected-frame)
  (list (cons 'cursor-type (intern cursor)))))

(set-bar-cursor)
