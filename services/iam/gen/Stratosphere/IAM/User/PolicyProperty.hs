module Stratosphere.IAM.User.PolicyProperty (
        PolicyProperty(..), mkPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyProperty
  = PolicyProperty {policyDocument :: JSON.Object,
                    policyName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyProperty ::
  JSON.Object -> Value Prelude.Text -> PolicyProperty
mkPolicyProperty policyDocument policyName
  = PolicyProperty
      {policyDocument = policyDocument, policyName = policyName}
instance ToResourceProperties PolicyProperty where
  toResourceProperties PolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IAM::User.Policy", supportsTags = Prelude.False,
         properties = ["PolicyDocument" JSON..= policyDocument,
                       "PolicyName" JSON..= policyName]}
instance JSON.ToJSON PolicyProperty where
  toJSON PolicyProperty {..}
    = JSON.object
        ["PolicyDocument" JSON..= policyDocument,
         "PolicyName" JSON..= policyName]
instance Property "PolicyDocument" PolicyProperty where
  type PropertyType "PolicyDocument" PolicyProperty = JSON.Object
  set newValue PolicyProperty {..}
    = PolicyProperty {policyDocument = newValue, ..}
instance Property "PolicyName" PolicyProperty where
  type PropertyType "PolicyName" PolicyProperty = Value Prelude.Text
  set newValue PolicyProperty {..}
    = PolicyProperty {policyName = newValue, ..}