init:
	git submodule update --rebase --remote

run: init
	hugo server --baseUrl=http://127.0.0.1:1313 --buildDrafts --buildFuture
