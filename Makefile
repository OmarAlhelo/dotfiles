.PHONY: all clean help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'





stow:                                                                    ## Stow all directories
	stow --target=/Users/oalhelou -S .files

unstow:                                                                  ## Unstow all directories
	stow --target=/Users/oalhelou -D .files
