-include .env

# Define the Solidity version and project name
PROJECT_NAME=LMNGToken

# Define the paths
FORGE=forge
FORGE_FLAGS=--optimize --optimizer-runs=200
PRIVATE_KEY_ANVIL=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

.PHONY: all test clean deploy-anvil deploy-sepolia help

# Network args for deploying
NETWORK_ARGS_LOCAL := --rpc-url http://127.0.0.1:8545 --private-key $(PRIVATE_KEY_ANVIL) --broadcast
NETWORK_ARGS_SEPOLIA := --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast

# Default target to build the project
all: clean build

# Build the smart contracts
build:
	@echo "Building the smart contracts..."
	$(FORGE) build $(FORGE_FLAGS)

# Run tests
test:
	@echo "Running tests..."
	$(FORGE) test

# Deploy on Sepolia
deploy-sepolia:
	@echo "Deploying the smart contracts on Sepolia..."
	@if [ -z "$(SEPOLIA_RPC_URL)" ] || [ -z "$(PRIVATE_KEY)" ]; then \
		echo "Error: SEPOLIA_RPC_URL and PRIVATE_KEY must be set in the .env file or as environment variables."; \
		exit 1; \
	fi
	$(FORGE) script script/DeployLMNGToken.s.sol $(NETWORK_ARGS_SEPOLIA)

# Deploy on Anvil
deploy-anvil:
	@echo "Deploying the smart contracts on Anvil..."
	$(FORGE) script script/DeployLMNGToken.s.sol $(NETWORK_ARGS_LOCAL)

# Clean the build artifacts
clean:
	@echo "Cleaning up the project..."
	$(FORGE) clean

# Help target
help:
	@echo "Makefile commands:"
	@echo "  all            - Clean and build the project"
	@echo "  build          - Build the smart contracts"
	@echo "  test           - Run tests"
	@echo "  deploy-sepolia - Deploy the smart contracts on Sepolia network"
	@echo "  deploy-anvil   - Deploy the smart contracts on Anvil local network"
	@echo "  clean          - Clean the build artifacts"
