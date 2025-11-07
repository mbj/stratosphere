module Stratosphere.QuickSight.Dashboard.GeospatialCircleRadiusProperty (
        GeospatialCircleRadiusProperty(..),
        mkGeospatialCircleRadiusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialCircleRadiusProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcircleradius.html>
    GeospatialCircleRadiusProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialcircleradius.html#cfn-quicksight-dashboard-geospatialcircleradius-radius>
                                    radius :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialCircleRadiusProperty :: GeospatialCircleRadiusProperty
mkGeospatialCircleRadiusProperty
  = GeospatialCircleRadiusProperty
      {haddock_workaround_ = (), radius = Prelude.Nothing}
instance ToResourceProperties GeospatialCircleRadiusProperty where
  toResourceProperties GeospatialCircleRadiusProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialCircleRadius",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Radius" Prelude.<$> radius])}
instance JSON.ToJSON GeospatialCircleRadiusProperty where
  toJSON GeospatialCircleRadiusProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Radius" Prelude.<$> radius]))
instance Property "Radius" GeospatialCircleRadiusProperty where
  type PropertyType "Radius" GeospatialCircleRadiusProperty = Value Prelude.Double
  set newValue GeospatialCircleRadiusProperty {..}
    = GeospatialCircleRadiusProperty
        {radius = Prelude.pure newValue, ..}