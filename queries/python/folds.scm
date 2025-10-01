;; This file defines folds for Python docstrings only.

; Docstrings in modules
(module body: (block. (expression_statement (string) @fold)))

; Docstrings in classes
(class_definition body: (block. (expression_statement (string) @fold)))

; Docstrings in functions and methods
(function_definition body: (block. (expression_statement (string) @fold)))
