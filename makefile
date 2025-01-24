# Define the Solidity version and project name
SOLIDITY_VERSION=0.8.18
PROJECT_NAME=LMNGToken

# Define the paths
FORGE=forge
FORGE_FLAGS=--optimizer --optimizer-runs=200

# Default target to build the project
all: build

# Build the smart contracts
build:
	@echo "Building the smart contracts..."
	$(FORGE) build $(FORGE_FLAGS)

# Run tests
test:
	@echo "Running tests..."
	$(FORGE) test

# Deploy the smart contracts (you might need to adjust this based on your deployment script)
deploy:
	@echo "Deploying the smart contracts..."
	$(FORGE) deploy $(FORGE_FLAGS)

# Clean the build artifacts
clean:
	@echo "Cleaning up the project..."
	$(FORGE) clean

# Help command to show available commands
help:
	@echo "Available commands:"
	@echo "  make build     - Build the smart contracts"
	@echo "  make test      - Run the tests"
	@echo "  make deploy    - Deploy the smart contracts"
	@echo "  make clean     - Clean up the project"
	@echo "  make help      - Show this help message"

.PHONY: all build test deploy clean help
