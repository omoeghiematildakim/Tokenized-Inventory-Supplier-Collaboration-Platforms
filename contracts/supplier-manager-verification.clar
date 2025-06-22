;; Supplier Manager Verification Contract
;; Validates and manages supplier managers

(define-constant CONTRACT_OWNER tx-sender)
(define-constant ERR_UNAUTHORIZED (err u100))
(define-constant ERR_ALREADY_VERIFIED (err u101))
(define-constant ERR_NOT_FOUND (err u102))

;; Data structures
(define-map verified-managers principal bool)
(define-map manager-details principal {
    company-name: (string-ascii 100),
    verification-date: uint,
    status: (string-ascii 20)
})

;; Public functions
(define-public (verify-manager (manager principal) (company-name (string-ascii 100)))
    (begin
        (asserts! (is-eq tx-sender CONTRACT_OWNER) ERR_UNAUTHORIZED)
        (asserts! (is-none (map-get? verified-managers manager)) ERR_ALREADY_VERIFIED)
        (map-set verified-managers manager true)
        (map-set manager-details manager {
            company-name: company-name,
            verification-date: block-height,
            status: "verified"
        })
        (ok true)
    )
)

(define-public (revoke-verification (manager principal))
    (begin
        (asserts! (is-eq tx-sender CONTRACT_OWNER) ERR_UNAUTHORIZED)
        (asserts! (is-some (map-get? verified-managers manager)) ERR_NOT_FOUND)
        (map-delete verified-managers manager)
        (map-delete manager-details manager)
        (ok true)
    )
)

;; Read-only functions
(define-read-only (is-verified (manager principal))
    (default-to false (map-get? verified-managers manager))
)

(define-read-only (get-manager-details (manager principal))
    (map-get? manager-details manager)
)
