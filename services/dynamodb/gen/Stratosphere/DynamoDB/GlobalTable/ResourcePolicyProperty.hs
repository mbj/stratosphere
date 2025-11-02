module Stratosphere.DynamoDB.GlobalTable.ResourcePolicyProperty (
        ResourcePolicyProperty(..), mkResourcePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ResourcePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-resourcepolicy.html>
    ResourcePolicyProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-resourcepolicy.html#cfn-dynamodb-globaltable-resourcepolicy-policydocument>
                            policyDocument :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicyProperty :: JSON.Object -> ResourcePolicyProperty
mkResourcePolicyProperty policyDocument
  = ResourcePolicyProperty
      {haddock_workaround_ = (), policyDocument = policyDocument}
instance ToResourceProperties ResourcePolicyProperty where
  toResourceProperties ResourcePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ResourcePolicy",
         supportsTags = Prelude.False,
         properties = ["PolicyDocument" JSON..= policyDocument]}
instance JSON.ToJSON ResourcePolicyProperty where
  toJSON ResourcePolicyProperty {..}
    = JSON.object ["PolicyDocument" JSON..= policyDocument]
instance Property "PolicyDocument" ResourcePolicyProperty where
  type PropertyType "PolicyDocument" ResourcePolicyProperty = JSON.Object
  set newValue ResourcePolicyProperty {..}
    = ResourcePolicyProperty {policyDocument = newValue, ..}