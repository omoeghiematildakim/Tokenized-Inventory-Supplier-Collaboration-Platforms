# Tokenized Inventory Supplier Collaboration Platform

A comprehensive blockchain-based platform for managing supplier collaborations, inventory sharing, and performance optimization using Clarity smart contracts.

## Overview

This platform provides a decentralized solution for suppliers to collaborate, share inventory information, plan jointly, and optimize performance through tokenized incentives and transparent tracking.

## Features

### 🔐 Supplier Manager Verification
- Validates and manages supplier managers
- Tracks verification status and company details
- Owner-controlled verification process

### 🤝 Collaboration Coordination
- Creates and manages collaboration sessions
- Tracks participants and collaboration status
- Facilitates multi-party supplier coordination

### 📊 Information Sharing
- Secure inventory information sharing
- Access control and permissions management
- Data integrity through hash verification

### 📋 Joint Planning
- Collaborative inventory planning sessions
- Participant approval workflows
- Plan finalization and execution tracking

### 📈 Performance Optimization
- Comprehensive performance metrics tracking
- Historical performance data
- Overall performance score calculation

## Smart Contracts

### 1. Supplier Manager Verification (\`supplier-manager-verification.clar\`)
Manages the verification of supplier managers and their credentials.

**Key Functions:**
- \`verify-manager\`: Verify a supplier manager
- \`revoke-verification\`: Revoke manager verification
- \`is-verified\`: Check verification status
- \`get-manager-details\`: Get manager information

### 2. Collaboration Coordination (\`collaboration-coordination.clar\`)
Coordinates collaboration activities between multiple suppliers.

**Key Functions:**
- \`create-collaboration\`: Start a new collaboration
- \`update-collaboration-status\`: Update collaboration status
- \`get-collaboration\`: Retrieve collaboration details

### 3. Information Sharing (\`information-sharing.clar\`)
Manages secure sharing of inventory information between suppliers.

**Key Functions:**
- \`share-information\`: Share inventory data
- \`grant-access\`: Grant access to specific suppliers
- \`revoke-access\`: Revoke access permissions
- \`get-shared-information\`: Retrieve shared data

### 4. Joint Planning (\`joint-planning.clar\`)
Facilitates joint inventory planning sessions with approval workflows.

**Key Functions:**
- \`create-planning-session\`: Create planning session
- \`approve-plan\`: Approve a planning session
- \`finalize-plan\`: Finalize approved plans
- \`get-planning-session\`: Get session details

### 5. Performance Optimization (\`performance-optimization.clar\`)
Tracks and optimizes supplier performance metrics.

**Key Functions:**
- \`update-performance\`: Update performance scores
- \`record-performance-history\`: Record historical data
- \`get-performance-metrics\`: Get current metrics
- \`calculate-overall-score\`: Calculate overall performance

## Getting Started

### Prerequisites
- Clarity CLI
- Stacks blockchain node
- Node.js (for testing)

### Installation

1. Clone the repository:
   \`\`\`bash
   git clone <repository-url>
   cd tokenized-inventory-platform
   \`\`\`

2. Install dependencies:
   \`\`\`bash
   npm install
   \`\`\`

3. Run tests:
   \`\`\`bash
   npm test
   \`\`\`

### Deployment

Deploy contracts to Stacks blockchain:

\`\`\`bash
clarinet deploy --network testnet
\`\`\`

## Usage Examples

### Verify a Supplier Manager
\`\`\`clarity
(contract-call? .supplier-manager-verification verify-manager 'SP1234... "Acme Supply Co")
\`\`\`

### Create a Collaboration
\`\`\`clarity
(contract-call? .collaboration-coordination create-collaboration (list 'SP1234... 'SP5678...))
\`\`\`

### Share Inventory Information
\`\`\`clarity
(contract-call? .information-sharing share-information 0x1234... (list 'SP1234...) "inventory-levels")
\`\`\`

### Update Performance Metrics
\`\`\`clarity
(contract-call? .performance-optimization update-performance 'SP1234... u95 u88 u92)
\`\`\`

## Testing

The platform includes comprehensive tests using Vitest:

\`\`\`bash
npm run test
\`\`\`

## Architecture

The platform follows a modular architecture with separate contracts for each major functionality:

- **Verification Layer**: Manages supplier authentication
- **Coordination Layer**: Handles collaboration workflows
- **Data Layer**: Manages information sharing and access
- **Planning Layer**: Facilitates joint planning processes
- **Optimization Layer**: Tracks and improves performance

## Security Considerations

- All contracts implement proper access controls
- Data integrity is maintained through hash verification
- Permission-based access to sensitive information
- Owner-controlled verification processes

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support and questions, please open an issue in the GitHub repository.
