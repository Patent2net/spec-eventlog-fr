help:
	@echo "Generate HTML from a Bikeshed source document:"
	@echo "  make spec    Generate HTML"
	@echo "  make watch   Generate HTML each time the source changes"

spec:
	docker run --rm -v "`pwd`:/spec" -w /spec netwerkdigitaalerfgoed/bikeshed:1.7.0

watch:
	docker run --rm -v "`pwd`:/spec" -w /spec netwerkdigitaalerfgoed/bikeshed:1.7.0 sh -c "bikeshed watch"
web:
	curl -s https://api.csswg.org/bikeshed/ -F file=@index.bs -F force=1 > index.html