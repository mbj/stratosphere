module Stratosphere.MPA.ApprovalTeam.PolicyProperty (
        PolicyProperty(..), mkPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-policy.html>
    PolicyProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-policy.html#cfn-mpa-approvalteam-policy-policyarn>
                    policyArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyProperty :: Value Prelude.Text -> PolicyProperty
mkPolicyProperty policyArn
  = PolicyProperty {haddock_workaround_ = (), policyArn = policyArn}
instance ToResourceProperties PolicyProperty where
  toResourceProperties PolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::MPA::ApprovalTeam.Policy",
         supportsTags = Prelude.False,
         properties = ["PolicyArn" JSON..= policyArn]}
instance JSON.ToJSON PolicyProperty where
  toJSON PolicyProperty {..}
    = JSON.object ["PolicyArn" JSON..= policyArn]
instance Property "PolicyArn" PolicyProperty where
  type PropertyType "PolicyArn" PolicyProperty = Value Prelude.Text
  set newValue PolicyProperty {..}
    = PolicyProperty {policyArn = newValue, ..}