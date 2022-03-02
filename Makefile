DRAFT:=anima-jws-voucher

html: xml
	xml2rfc ${DRAFT}.xml --html

xml:
	kdrfc ${DRAFT}.mkd