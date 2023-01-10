
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-votingpolicy.html

module Stratosphere.ResourceProperties.ManagedBlockchainMemberVotingPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ManagedBlockchainMemberApprovalThresholdPolicy

-- | Full data type definition for ManagedBlockchainMemberVotingPolicy. See
-- 'managedBlockchainMemberVotingPolicy' for a more convenient constructor.
data ManagedBlockchainMemberVotingPolicy =
  ManagedBlockchainMemberVotingPolicy
  { _managedBlockchainMemberVotingPolicyApprovalThresholdPolicy :: Maybe ManagedBlockchainMemberApprovalThresholdPolicy
  } deriving (Show, Eq)

instance ToJSON ManagedBlockchainMemberVotingPolicy where
  toJSON ManagedBlockchainMemberVotingPolicy{..} =
    object $
    catMaybes
    [ fmap (("ApprovalThresholdPolicy",) . toJSON) _managedBlockchainMemberVotingPolicyApprovalThresholdPolicy
    ]

-- | Constructor for 'ManagedBlockchainMemberVotingPolicy' containing required
-- fields as arguments.
managedBlockchainMemberVotingPolicy
  :: ManagedBlockchainMemberVotingPolicy
managedBlockchainMemberVotingPolicy  =
  ManagedBlockchainMemberVotingPolicy
  { _managedBlockchainMemberVotingPolicyApprovalThresholdPolicy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-votingpolicy.html#cfn-managedblockchain-member-votingpolicy-approvalthresholdpolicy
mbmvpApprovalThresholdPolicy :: Lens' ManagedBlockchainMemberVotingPolicy (Maybe ManagedBlockchainMemberApprovalThresholdPolicy)
mbmvpApprovalThresholdPolicy = lens _managedBlockchainMemberVotingPolicyApprovalThresholdPolicy (\s a -> s { _managedBlockchainMemberVotingPolicyApprovalThresholdPolicy = a })
