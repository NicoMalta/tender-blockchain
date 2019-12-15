pragma solidity ^0.5.0;


contract Tender {
      address public governmentOfficerAddress;
      string public tenderName; 
      string public tenderId;
      uint256 public bidSubmissionClosingDate;
      uint256 public bidOpeningDate;
      uint256 public covers;
      string[] public clauses;
      string[] public taskName;
      uint256[] public taskDays;
      string[] public constraints;
      uint256 finalTenderAmount;

      struct ContractorProposal {
          address contractorAddress;
          string[] quotationClause;
          uint256[] quotationAmount;
          uint256 proposalAmount;
          string[] constraintDocuments;
          ProposalStatus status;
      }

      enum ProposalStatus {
          verified,
          unverified,
          rejected
      }
  
  constructor() public {
        
  }

  function getTenderName() public view returns (string memory tenderName) {
      return tenderName;
  }

  function setTenderName(string memory name) public {
    if(msg.sender == governmentOfficerAddress)
          tenderName = name;
  }
}
