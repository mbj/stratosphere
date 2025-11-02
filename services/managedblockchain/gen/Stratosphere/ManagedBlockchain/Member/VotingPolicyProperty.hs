module Stratosphere.ManagedBlockchain.Member.VotingPolicyProperty (
        module Exports, VotingPolicyProperty(..), mkVotingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Member.ApprovalThresholdPolicyProperty as Exports
import Stratosphere.ResourceProperties
data VotingPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-votingpolicy.html>
    VotingPolicyProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-votingpolicy.html#cfn-managedblockchain-member-votingpolicy-approvalthresholdpolicy>
                          approvalThresholdPolicy :: (Prelude.Maybe ApprovalThresholdPolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVotingPolicyProperty :: VotingPolicyProperty
mkVotingPolicyProperty
  = VotingPolicyProperty
      {haddock_workaround_ = (),
       approvalThresholdPolicy = Prelude.Nothing}
instance ToResourceProperties VotingPolicyProperty where
  toResourceProperties VotingPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member.VotingPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApprovalThresholdPolicy"
                              Prelude.<$> approvalThresholdPolicy])}
instance JSON.ToJSON VotingPolicyProperty where
  toJSON VotingPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApprovalThresholdPolicy"
                 Prelude.<$> approvalThresholdPolicy]))
instance Property "ApprovalThresholdPolicy" VotingPolicyProperty where
  type PropertyType "ApprovalThresholdPolicy" VotingPolicyProperty = ApprovalThresholdPolicyProperty
  set newValue VotingPolicyProperty {..}
    = VotingPolicyProperty
        {approvalThresholdPolicy = Prelude.pure newValue, ..}