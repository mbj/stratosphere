
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html

module Stratosphere.ResourceProperties.ManagedBlockchainMemberApprovalThresholdPolicy where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- ManagedBlockchainMemberApprovalThresholdPolicy. See
-- 'managedBlockchainMemberApprovalThresholdPolicy' for a more convenient
-- constructor.
data ManagedBlockchainMemberApprovalThresholdPolicy =
  ManagedBlockchainMemberApprovalThresholdPolicy
  { _managedBlockchainMemberApprovalThresholdPolicyProposalDurationInHours :: Maybe (Val Integer)
  , _managedBlockchainMemberApprovalThresholdPolicyThresholdComparator :: Maybe (Val Text)
  , _managedBlockchainMemberApprovalThresholdPolicyThresholdPercentage :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ManagedBlockchainMemberApprovalThresholdPolicy where
  toJSON ManagedBlockchainMemberApprovalThresholdPolicy{..} =
    object $
    catMaybes
    [ fmap (("ProposalDurationInHours",) . toJSON) _managedBlockchainMemberApprovalThresholdPolicyProposalDurationInHours
    , fmap (("ThresholdComparator",) . toJSON) _managedBlockchainMemberApprovalThresholdPolicyThresholdComparator
    , fmap (("ThresholdPercentage",) . toJSON) _managedBlockchainMemberApprovalThresholdPolicyThresholdPercentage
    ]

-- | Constructor for 'ManagedBlockchainMemberApprovalThresholdPolicy'
-- containing required fields as arguments.
managedBlockchainMemberApprovalThresholdPolicy
  :: ManagedBlockchainMemberApprovalThresholdPolicy
managedBlockchainMemberApprovalThresholdPolicy  =
  ManagedBlockchainMemberApprovalThresholdPolicy
  { _managedBlockchainMemberApprovalThresholdPolicyProposalDurationInHours = Nothing
  , _managedBlockchainMemberApprovalThresholdPolicyThresholdComparator = Nothing
  , _managedBlockchainMemberApprovalThresholdPolicyThresholdPercentage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-proposaldurationinhours
mbmatpProposalDurationInHours :: Lens' ManagedBlockchainMemberApprovalThresholdPolicy (Maybe (Val Integer))
mbmatpProposalDurationInHours = lens _managedBlockchainMemberApprovalThresholdPolicyProposalDurationInHours (\s a -> s { _managedBlockchainMemberApprovalThresholdPolicyProposalDurationInHours = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-thresholdcomparator
mbmatpThresholdComparator :: Lens' ManagedBlockchainMemberApprovalThresholdPolicy (Maybe (Val Text))
mbmatpThresholdComparator = lens _managedBlockchainMemberApprovalThresholdPolicyThresholdComparator (\s a -> s { _managedBlockchainMemberApprovalThresholdPolicyThresholdComparator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-thresholdpercentage
mbmatpThresholdPercentage :: Lens' ManagedBlockchainMemberApprovalThresholdPolicy (Maybe (Val Integer))
mbmatpThresholdPercentage = lens _managedBlockchainMemberApprovalThresholdPolicyThresholdPercentage (\s a -> s { _managedBlockchainMemberApprovalThresholdPolicyThresholdPercentage = a })
