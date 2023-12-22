;; -*- no-byte-compile: t; -*-
;;; tools/magit/packages.el

(when (package! magit :pin "48818355728c48d986d74dde8b1e9fba25f0fd53")
  (when (modulep! +forge)
    (package! forge :pin "a6e0a634f87154188a0fe7f1ec8bc81dd65402a4")
    (package! code-review
      :recipe (:host github
               :repo "doomelpa/code-review/"
               :files ("graphql" "code-review*.el"))
      :pin "c34ff1ee64c7ecb654635bee4e2c147b10c66297"))
    ; HACK closql c3b34a6ec438 breaks code-review wandersoncferreira/code-review#245,
    ; and the current forge commit (but forge does have an upstream fix),
    ; pinned as a temporary measure to prevent user breakages
    ;; (package! closql :pin "0a7226331ff1f96142199915c0ac7940bac4afdd"))
  (package! magit-todos :pin "cadf29d1cc410c71a0020c7f83999d9f61721b90"))
