DRAFT:=anima-jws-voucher

html: xml
	xml2rfc --v2v3 ${DRAFT}.xml && mv ${DRAFT}.v2v3.xml ${DRAFT}.xml
	xml2rfc ${DRAFT}.xml --html

xml:
	kdrfc -3 ${DRAFT}.mkd

