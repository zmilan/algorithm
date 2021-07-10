CARGO = RUST_BACKTRACE=1 rustup run nightly cargo
TEST = $(CARGO) test
BENCH = $(CARGO) bench
BUILD = $(CARGO) build

build:
	@$(BUILD)

clippy:
	@$(CARGO) clippy

test:
	#$(TEST) -- --nocapture
	@$(TEST)

bench:
	@$(BENCH)

stats:
	@echo "codes: "
	@cloc . --exclude-dir=target
	@echo
	@echo "commits: "
	@git log --oneline | wc -l