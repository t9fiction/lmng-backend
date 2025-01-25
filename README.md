# LMNGToken

## Overview

LMNGToken is an ERC20 token deployed on the Arbitrum Sepolia network. This project utilizes Foundry, a powerful development environment for Ethereum smart contracts, to streamline the development, testing, and deployment of the token.

## Features

- **ERC20 Token Standard**: Implements the ERC20 standard for fungible tokens.
- **Deployable on Arbitrum Sepolia**: Aimed at providing fast and low-cost transactions.
- **Testing Framework**: Comprehensive tests to ensure the token's functionality and security.

## Getting Started

### Prerequisites

Ensure you have the following installed on your machine:

- [Foundry](https://github.com/gakonst/foundry)
- [Node.js](https://nodejs.org/)
- [Make](https://www.gnu.org/software/make/)

### Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/lmng-token.git
   cd lmng-token
   ```

2. Install dependencies (if any):

   ```bash
   npm install
   ```

3. Create a `.env` file in the root directory of the project with the following structure:

   ```env
   CONTRACT_ADDRESS_SEPOLIA=your_sepolia_contract_address
   CONTRACT_ADDRESS_ARBITRUM=your_arbitrum_contract_address
   PRIVATE_KEY=your_private_key
   SEPOLIA_RPC_URL=https://eth-sepolia.g.alchemy.com/v2/your_api_key
   ETHERSCAN_API_KEY=your_etherscan_api_key
   ARBITRUM_SEPOLIA_RPC_URL=https://arbitrum-sepolia.infura.io/v3/your_api_key
   ARBITRUM_CHAIN_ID=421613
   ```

### Project Structure

```
lmng-token/
├── src/
│   └── LMNGToken.sol         # The ERC20 token contract
├── script/
│   └── DeployLMNGToken.s.sol  # Deployment script for the token
├── tests/
│   └── LMNGToken.t.sol       # Test cases for the token
├── Makefile                  # Makefile for build and deployment commands
└── .env                      # Environment variables for deployment
```

### Commands

- **Build the project**:

   ```bash
   make build
   ```

- **Run tests**:

   ```bash
   make test
   ```

- **Deploy on Sepolia**:

   ```bash
   make deploy-sepolia
   ```

- **Deploy on Arbitrum Sepolia**:

   ```bash
   make deploy-arbitrum
   ```

- **Verify contract on Etherscan (Sepolia)**:

   ```bash
   make verify
   ```

- **Verify contract on Arbitrum Sepolia**:

   ```bash
   make verify-arbitrum
   ```

### Testing

The project includes unit tests to validate the functionality of the LMNGToken. Use the following command to run the tests:

```bash
make test
```

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please create a pull request or open an issue for any suggestions or improvements.

## Acknowledgements

- [Foundry](https://github.com/gakonst/foundry) for the development framework.
- [OpenZeppelin](https://openzeppelin.com/contracts/) for their secure contract libraries.
```
