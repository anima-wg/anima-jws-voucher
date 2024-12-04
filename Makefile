DRAFT:=anima-jws-voucher

html: xml
	xml2rfc --v2v3 ${DRAFT}.xml && mv ${DRAFT}.v2v3.xml ${DRAFT}.xml
	xml2rfc ${DRAFT}.xml --html

xml:
	kdrfc -3 ${DRAFT}.mkd

submit: ${DRAFT}.xml
	curl -s -F "user=mcr+ietf@sandelman.ca" ${REPLACES} -F "xml=@${DRAFT}.xml" https://datatracker.ietf.org/api/submission | jq

