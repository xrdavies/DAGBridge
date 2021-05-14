// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IBridge {

    function getFeePercentage() external view returns(uint);

    function receiveTokens(uint256 amount, bytes calldata userData) external returns(bool);

    function acceptTransfer(
        address receiver,
        uint256 amount,
        bytes32 blockHash,
        bytes32 transactionHash,
        uint32 logIndex
    ) external returns(bool);

    event ERC20XDAGCreated(address indexed _address, string _newSymbol, uint256 _decimals);
    
    event CrossERC20XDAG(address indexed _from, uint256 _amount, bytes _userData);
    
    event AcceptedCrossTransfer(address indexed _tokenAddress, address indexed _to, uint256 _amount, uint8 _decimals);
    
    event FeeChanged(uint256 _amount);
}