# Define the binary name
BINARY_NAME=blitzdenk


# Build the project in release mode
release:
	cargo build --release

# Copy the binary to ~/.local/bin
install: release
	@cp target/release/$(BINARY_NAME) ~/.local/bin/
	@echo "Binary installed to ~/.local/bin/$(BINARY_NAME)"

test:
	cargo test -- --nocapture
