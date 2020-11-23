(defpackage hello-roswell
  (:use :cl)
  (:export :hello-world)
  (:export :yubaba))
(in-package :hello-roswell)

(defun yubaba-print (str)
 (format t "湯婆婆：~A~%" str))

(defun take-away-name (str)
    ;; 引数で与えられた文字列から一文字抽出する
    (string (aref str (random (length str)))))

(defun sign ()
    ;; 標準入力からも文字列を受け取り，1文字抜き出したものと合わせて返す
    (let* ((name (read-line)))
          (list name (take-away-name name))))

(defun make-msg (name new-name)
    ;; メッセージの元となるリストを返す
    ;; name, new-nameを評価してほしいためquoteは使用しない
    (list (list "フン．" name "というのかい．贅沢な名だねぇ．")
          (list "今からお前の名前は" new-name "だ．いいかい，" 
                new-name "だよ．わかったら返事をするんだ，" 
                new-name "!!")))

(defun concat (list)
    ;; リストを受け取って結合して文字列で返す
    (apply #'concatenate (cons 'string list)))

(defun yubaba ()
    (yubaba-print "契約書だよ，そこに名前を書きな．")
    (map 'list #'yubaba-print (map 'list #'concat (apply #'make-msg (sign)))))

(defun yubaba-2 ()
    (yubaba-print "契約書だよ，そこに名前を書きな．")
    (defvar name (read-line))
    (yubaba-print (concat (list "フン．" name "というのかい．贅沢な名だねぇ．")))
    (defvar new-name (take-away-name name))
    (yubaba-print (concat (list "今からお前の名前は" new-name "だ．いいかい，" 
                      new-name "だよ．わかったら返事をするんだ，" 
                      new-name "!!"))))

(defun hello-world ()
    (format t "Hello, World!"))