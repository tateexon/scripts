
install:
	asdf plugin add shellcheck || true
	asdf plugin add shfmt || true
	asdf install

shellcheck:
	shellcheck -s bash ./*

shfmt:
	shfmt -l -d .

lint: shellcheck shfmt