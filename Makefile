init:
	git submodule sync && git submodule update --init \
	&& hugo gen chromastyles --style=monokai > syntax.css

run:
	cd site \
	&& hugo server -D
