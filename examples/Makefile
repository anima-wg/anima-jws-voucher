all: voucher_request_01.b64.folded voucher_request_01-header.b64.folded \
	voucher_request_01-payload.b64.folded voucher_request_01-signature.b64.folded

%.b64.folded: %.b64
	fold -w 60 $< >$@


