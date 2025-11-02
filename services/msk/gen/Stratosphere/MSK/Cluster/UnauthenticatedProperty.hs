module Stratosphere.MSK.Cluster.UnauthenticatedProperty (
        UnauthenticatedProperty(..), mkUnauthenticatedProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UnauthenticatedProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-unauthenticated.html>
    UnauthenticatedProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-unauthenticated.html#cfn-msk-cluster-unauthenticated-enabled>
                             enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUnauthenticatedProperty ::
  Value Prelude.Bool -> UnauthenticatedProperty
mkUnauthenticatedProperty enabled
  = UnauthenticatedProperty
      {haddock_workaround_ = (), enabled = enabled}
instance ToResourceProperties UnauthenticatedProperty where
  toResourceProperties UnauthenticatedProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.Unauthenticated",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON UnauthenticatedProperty where
  toJSON UnauthenticatedProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" UnauthenticatedProperty where
  type PropertyType "Enabled" UnauthenticatedProperty = Value Prelude.Bool
  set newValue UnauthenticatedProperty {..}
    = UnauthenticatedProperty {enabled = newValue, ..}