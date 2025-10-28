module Stratosphere.ECR.RegistryPolicy (
        RegistryPolicy(..), mkRegistryPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data RegistryPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-registrypolicy.html>
    RegistryPolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-registrypolicy.html#cfn-ecr-registrypolicy-policytext>
                    policyText :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegistryPolicy :: JSON.Object -> RegistryPolicy
mkRegistryPolicy policyText
  = RegistryPolicy
      {haddock_workaround_ = (), policyText = policyText}
instance ToResourceProperties RegistryPolicy where
  toResourceProperties RegistryPolicy {..}
    = ResourceProperties
        {awsType = "AWS::ECR::RegistryPolicy",
         supportsTags = Prelude.False,
         properties = ["PolicyText" JSON..= policyText]}
instance JSON.ToJSON RegistryPolicy where
  toJSON RegistryPolicy {..}
    = JSON.object ["PolicyText" JSON..= policyText]
instance Property "PolicyText" RegistryPolicy where
  type PropertyType "PolicyText" RegistryPolicy = JSON.Object
  set newValue RegistryPolicy {..}
    = RegistryPolicy {policyText = newValue, ..}