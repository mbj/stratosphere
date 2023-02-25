module Stratosphere.EMR.Cluster.PlacementTypeProperty (
        PlacementTypeProperty(..), mkPlacementTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementTypeProperty
  = PlacementTypeProperty {availabilityZone :: (Value Prelude.Text)}
mkPlacementTypeProperty ::
  Value Prelude.Text -> PlacementTypeProperty
mkPlacementTypeProperty availabilityZone
  = PlacementTypeProperty {availabilityZone = availabilityZone}
instance ToResourceProperties PlacementTypeProperty where
  toResourceProperties PlacementTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.PlacementType",
         properties = ["AvailabilityZone" JSON..= availabilityZone]}
instance JSON.ToJSON PlacementTypeProperty where
  toJSON PlacementTypeProperty {..}
    = JSON.object ["AvailabilityZone" JSON..= availabilityZone]
instance Property "AvailabilityZone" PlacementTypeProperty where
  type PropertyType "AvailabilityZone" PlacementTypeProperty = Value Prelude.Text
  set newValue PlacementTypeProperty {}
    = PlacementTypeProperty {availabilityZone = newValue, ..}