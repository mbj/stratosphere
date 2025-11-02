module Stratosphere.ResilienceHub.ResiliencyPolicy (
        module Exports, ResiliencyPolicy(..), mkResiliencyPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResilienceHub.ResiliencyPolicy.PolicyMapProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResiliencyPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-resiliencypolicy.html>
    ResiliencyPolicy {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-resiliencypolicy.html#cfn-resiliencehub-resiliencypolicy-datalocationconstraint>
                      dataLocationConstraint :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-resiliencypolicy.html#cfn-resiliencehub-resiliencypolicy-policy>
                      policy :: PolicyMapProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-resiliencypolicy.html#cfn-resiliencehub-resiliencypolicy-policydescription>
                      policyDescription :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-resiliencypolicy.html#cfn-resiliencehub-resiliencypolicy-policyname>
                      policyName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-resiliencypolicy.html#cfn-resiliencehub-resiliencypolicy-tags>
                      tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resiliencehub-resiliencypolicy.html#cfn-resiliencehub-resiliencypolicy-tier>
                      tier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResiliencyPolicy ::
  PolicyMapProperty
  -> Value Prelude.Text -> Value Prelude.Text -> ResiliencyPolicy
mkResiliencyPolicy policy policyName tier
  = ResiliencyPolicy
      {haddock_workaround_ = (), policy = policy,
       policyName = policyName, tier = tier,
       dataLocationConstraint = Prelude.Nothing,
       policyDescription = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ResiliencyPolicy where
  toResourceProperties ResiliencyPolicy {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::ResiliencyPolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Policy" JSON..= policy, "PolicyName" JSON..= policyName,
                            "Tier" JSON..= tier]
                           (Prelude.catMaybes
                              [(JSON..=) "DataLocationConstraint"
                                 Prelude.<$> dataLocationConstraint,
                               (JSON..=) "PolicyDescription" Prelude.<$> policyDescription,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResiliencyPolicy where
  toJSON ResiliencyPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Policy" JSON..= policy, "PolicyName" JSON..= policyName,
               "Tier" JSON..= tier]
              (Prelude.catMaybes
                 [(JSON..=) "DataLocationConstraint"
                    Prelude.<$> dataLocationConstraint,
                  (JSON..=) "PolicyDescription" Prelude.<$> policyDescription,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataLocationConstraint" ResiliencyPolicy where
  type PropertyType "DataLocationConstraint" ResiliencyPolicy = Value Prelude.Text
  set newValue ResiliencyPolicy {..}
    = ResiliencyPolicy
        {dataLocationConstraint = Prelude.pure newValue, ..}
instance Property "Policy" ResiliencyPolicy where
  type PropertyType "Policy" ResiliencyPolicy = PolicyMapProperty
  set newValue ResiliencyPolicy {..}
    = ResiliencyPolicy {policy = newValue, ..}
instance Property "PolicyDescription" ResiliencyPolicy where
  type PropertyType "PolicyDescription" ResiliencyPolicy = Value Prelude.Text
  set newValue ResiliencyPolicy {..}
    = ResiliencyPolicy {policyDescription = Prelude.pure newValue, ..}
instance Property "PolicyName" ResiliencyPolicy where
  type PropertyType "PolicyName" ResiliencyPolicy = Value Prelude.Text
  set newValue ResiliencyPolicy {..}
    = ResiliencyPolicy {policyName = newValue, ..}
instance Property "Tags" ResiliencyPolicy where
  type PropertyType "Tags" ResiliencyPolicy = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ResiliencyPolicy {..}
    = ResiliencyPolicy {tags = Prelude.pure newValue, ..}
instance Property "Tier" ResiliencyPolicy where
  type PropertyType "Tier" ResiliencyPolicy = Value Prelude.Text
  set newValue ResiliencyPolicy {..}
    = ResiliencyPolicy {tier = newValue, ..}