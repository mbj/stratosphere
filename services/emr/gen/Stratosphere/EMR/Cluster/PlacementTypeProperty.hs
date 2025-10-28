module Stratosphere.EMR.Cluster.PlacementTypeProperty (
        PlacementTypeProperty(..), mkPlacementTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementtype.html>
    PlacementTypeProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementtype.html#cfn-elasticmapreduce-cluster-placementtype-availabilityzone>
                           availabilityZone :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementTypeProperty ::
  Value Prelude.Text -> PlacementTypeProperty
mkPlacementTypeProperty availabilityZone
  = PlacementTypeProperty
      {haddock_workaround_ = (), availabilityZone = availabilityZone}
instance ToResourceProperties PlacementTypeProperty where
  toResourceProperties PlacementTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.PlacementType",
         supportsTags = Prelude.False,
         properties = ["AvailabilityZone" JSON..= availabilityZone]}
instance JSON.ToJSON PlacementTypeProperty where
  toJSON PlacementTypeProperty {..}
    = JSON.object ["AvailabilityZone" JSON..= availabilityZone]
instance Property "AvailabilityZone" PlacementTypeProperty where
  type PropertyType "AvailabilityZone" PlacementTypeProperty = Value Prelude.Text
  set newValue PlacementTypeProperty {..}
    = PlacementTypeProperty {availabilityZone = newValue, ..}