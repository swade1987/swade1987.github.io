init:
	git submodule sync && git submodule update --init \
	&& hugo gen chromastyles --style=monokai > syntax.css

run:
	hugo server --theme=hermit --baseUrl=http://127.0.0.1:1313 --buildDrafts --buildFuture
