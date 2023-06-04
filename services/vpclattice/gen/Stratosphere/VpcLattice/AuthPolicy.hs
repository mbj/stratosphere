module Stratosphere.VpcLattice.AuthPolicy (
        AuthPolicy(..), mkAuthPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthPolicy
  = AuthPolicy {policy :: JSON.Object,
                resourceIdentifier :: (Value Prelude.Text)}
mkAuthPolicy :: JSON.Object -> Value Prelude.Text -> AuthPolicy
mkAuthPolicy policy resourceIdentifier
  = AuthPolicy
      {policy = policy, resourceIdentifier = resourceIdentifier}
instance ToResourceProperties AuthPolicy where
  toResourceProperties AuthPolicy {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::AuthPolicy",
         supportsTags = Prelude.False,
         properties = ["Policy" JSON..= policy,
                       "ResourceIdentifier" JSON..= resourceIdentifier]}
instance JSON.ToJSON AuthPolicy where
  toJSON AuthPolicy {..}
    = JSON.object
        ["Policy" JSON..= policy,
         "ResourceIdentifier" JSON..= resourceIdentifier]
instance Property "Policy" AuthPolicy where
  type PropertyType "Policy" AuthPolicy = JSON.Object
  set newValue AuthPolicy {..} = AuthPolicy {policy = newValue, ..}
instance Property "ResourceIdentifier" AuthPolicy where
  type PropertyType "ResourceIdentifier" AuthPolicy = Value Prelude.Text
  set newValue AuthPolicy {..}
    = AuthPolicy {resourceIdentifier = newValue, ..}