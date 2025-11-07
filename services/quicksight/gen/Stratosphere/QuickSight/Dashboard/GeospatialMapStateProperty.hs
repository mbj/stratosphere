module Stratosphere.QuickSight.Dashboard.GeospatialMapStateProperty (
        module Exports, GeospatialMapStateProperty(..),
        mkGeospatialMapStateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialCoordinateBoundsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialMapStateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapstate.html>
    GeospatialMapStateProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapstate.html#cfn-quicksight-dashboard-geospatialmapstate-bounds>
                                bounds :: (Prelude.Maybe GeospatialCoordinateBoundsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapstate.html#cfn-quicksight-dashboard-geospatialmapstate-mapnavigation>
                                mapNavigation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialMapStateProperty :: GeospatialMapStateProperty
mkGeospatialMapStateProperty
  = GeospatialMapStateProperty
      {haddock_workaround_ = (), bounds = Prelude.Nothing,
       mapNavigation = Prelude.Nothing}
instance ToResourceProperties GeospatialMapStateProperty where
  toResourceProperties GeospatialMapStateProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialMapState",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bounds" Prelude.<$> bounds,
                            (JSON..=) "MapNavigation" Prelude.<$> mapNavigation])}
instance JSON.ToJSON GeospatialMapStateProperty where
  toJSON GeospatialMapStateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bounds" Prelude.<$> bounds,
               (JSON..=) "MapNavigation" Prelude.<$> mapNavigation]))
instance Property "Bounds" GeospatialMapStateProperty where
  type PropertyType "Bounds" GeospatialMapStateProperty = GeospatialCoordinateBoundsProperty
  set newValue GeospatialMapStateProperty {..}
    = GeospatialMapStateProperty {bounds = Prelude.pure newValue, ..}
instance Property "MapNavigation" GeospatialMapStateProperty where
  type PropertyType "MapNavigation" GeospatialMapStateProperty = Value Prelude.Text
  set newValue GeospatialMapStateProperty {..}
    = GeospatialMapStateProperty
        {mapNavigation = Prelude.pure newValue, ..}