module Stratosphere.ManagedBlockchain.Member.VotingPolicyProperty (
        module Exports, VotingPolicyProperty(..), mkVotingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Member.ApprovalThresholdPolicyProperty as Exports
import Stratosphere.ResourceProperties
data VotingPolicyProperty
  = VotingPolicyProperty {approvalThresholdPolicy :: (Prelude.Maybe ApprovalThresholdPolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVotingPolicyProperty :: VotingPolicyProperty
mkVotingPolicyProperty
  = VotingPolicyProperty {approvalThresholdPolicy = Prelude.Nothing}
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
  set newValue VotingPolicyProperty {}
    = VotingPolicyProperty
        {approvalThresholdPolicy = Prelude.pure newValue, ..}