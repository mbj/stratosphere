module Stratosphere.ManagedBlockchain.Member.ApprovalThresholdPolicyProperty (
        ApprovalThresholdPolicyProperty(..),
        mkApprovalThresholdPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApprovalThresholdPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html>
    ApprovalThresholdPolicyProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-proposaldurationinhours>
                                     proposalDurationInHours :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-thresholdcomparator>
                                     thresholdComparator :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-thresholdpercentage>
                                     thresholdPercentage :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApprovalThresholdPolicyProperty ::
  ApprovalThresholdPolicyProperty
mkApprovalThresholdPolicyProperty
  = ApprovalThresholdPolicyProperty
      {haddock_workaround_ = (),
       proposalDurationInHours = Prelude.Nothing,
       thresholdComparator = Prelude.Nothing,
       thresholdPercentage = Prelude.Nothing}
instance ToResourceProperties ApprovalThresholdPolicyProperty where
  toResourceProperties ApprovalThresholdPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member.ApprovalThresholdPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ProposalDurationInHours"
                              Prelude.<$> proposalDurationInHours,
                            (JSON..=) "ThresholdComparator" Prelude.<$> thresholdComparator,
                            (JSON..=) "ThresholdPercentage" Prelude.<$> thresholdPercentage])}
instance JSON.ToJSON ApprovalThresholdPolicyProperty where
  toJSON ApprovalThresholdPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ProposalDurationInHours"
                 Prelude.<$> proposalDurationInHours,
               (JSON..=) "ThresholdComparator" Prelude.<$> thresholdComparator,
               (JSON..=) "ThresholdPercentage" Prelude.<$> thresholdPercentage]))
instance Property "ProposalDurationInHours" ApprovalThresholdPolicyProperty where
  type PropertyType "ProposalDurationInHours" ApprovalThresholdPolicyProperty = Value Prelude.Integer
  set newValue ApprovalThresholdPolicyProperty {..}
    = ApprovalThresholdPolicyProperty
        {proposalDurationInHours = Prelude.pure newValue, ..}
instance Property "ThresholdComparator" ApprovalThresholdPolicyProperty where
  type PropertyType "ThresholdComparator" ApprovalThresholdPolicyProperty = Value Prelude.Text
  set newValue ApprovalThresholdPolicyProperty {..}
    = ApprovalThresholdPolicyProperty
        {thresholdComparator = Prelude.pure newValue, ..}
instance Property "ThresholdPercentage" ApprovalThresholdPolicyProperty where
  type PropertyType "ThresholdPercentage" ApprovalThresholdPolicyProperty = Value Prelude.Integer
  set newValue ApprovalThresholdPolicyProperty {..}
    = ApprovalThresholdPolicyProperty
        {thresholdPercentage = Prelude.pure newValue, ..}