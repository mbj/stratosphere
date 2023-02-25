module Stratosphere.MSK.Cluster.UnauthenticatedProperty (
        UnauthenticatedProperty(..), mkUnauthenticatedProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UnauthenticatedProperty
  = UnauthenticatedProperty {enabled :: (Value Prelude.Bool)}
mkUnauthenticatedProperty ::
  Value Prelude.Bool -> UnauthenticatedProperty
mkUnauthenticatedProperty enabled
  = UnauthenticatedProperty {enabled = enabled}
instance ToResourceProperties UnauthenticatedProperty where
  toResourceProperties UnauthenticatedProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.Unauthenticated",
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON UnauthenticatedProperty where
  toJSON UnauthenticatedProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" UnauthenticatedProperty where
  type PropertyType "Enabled" UnauthenticatedProperty = Value Prelude.Bool
  set newValue UnauthenticatedProperty {}
    = UnauthenticatedProperty {enabled = newValue, ..}