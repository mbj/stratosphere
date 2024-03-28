module Stratosphere.DynamoDB.Table.ResourcePolicyProperty (
        ResourcePolicyProperty(..), mkResourcePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ResourcePolicyProperty
  = ResourcePolicyProperty {policyDocument :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicyProperty :: JSON.Object -> ResourcePolicyProperty
mkResourcePolicyProperty policyDocument
  = ResourcePolicyProperty {policyDocument = policyDocument}
instance ToResourceProperties ResourcePolicyProperty where
  toResourceProperties ResourcePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.ResourcePolicy",
         supportsTags = Prelude.False,
         properties = ["PolicyDocument" JSON..= policyDocument]}
instance JSON.ToJSON ResourcePolicyProperty where
  toJSON ResourcePolicyProperty {..}
    = JSON.object ["PolicyDocument" JSON..= policyDocument]
instance Property "PolicyDocument" ResourcePolicyProperty where
  type PropertyType "PolicyDocument" ResourcePolicyProperty = JSON.Object
  set newValue ResourcePolicyProperty {}
    = ResourcePolicyProperty {policyDocument = newValue, ..}