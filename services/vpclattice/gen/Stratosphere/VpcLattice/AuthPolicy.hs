module Stratosphere.VpcLattice.AuthPolicy (
        AuthPolicy(..), mkAuthPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-authpolicy.html>
    AuthPolicy {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-authpolicy.html#cfn-vpclattice-authpolicy-policy>
                policy :: JSON.Object,
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-authpolicy.html#cfn-vpclattice-authpolicy-resourceidentifier>
                resourceIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthPolicy :: JSON.Object -> Value Prelude.Text -> AuthPolicy
mkAuthPolicy policy resourceIdentifier
  = AuthPolicy
      {haddock_workaround_ = (), policy = policy,
       resourceIdentifier = resourceIdentifier}
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