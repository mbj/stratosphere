module Stratosphere.QuickSight.Dashboard.GeospatialPolygonStyleProperty (
        module Exports, GeospatialPolygonStyleProperty(..),
        mkGeospatialPolygonStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialPolygonSymbolStyleProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialPolygonStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialpolygonstyle.html>
    GeospatialPolygonStyleProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialpolygonstyle.html#cfn-quicksight-dashboard-geospatialpolygonstyle-polygonsymbolstyle>
                                    polygonSymbolStyle :: (Prelude.Maybe GeospatialPolygonSymbolStyleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialPolygonStyleProperty :: GeospatialPolygonStyleProperty
mkGeospatialPolygonStyleProperty
  = GeospatialPolygonStyleProperty
      {haddock_workaround_ = (), polygonSymbolStyle = Prelude.Nothing}
instance ToResourceProperties GeospatialPolygonStyleProperty where
  toResourceProperties GeospatialPolygonStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialPolygonStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PolygonSymbolStyle" Prelude.<$> polygonSymbolStyle])}
instance JSON.ToJSON GeospatialPolygonStyleProperty where
  toJSON GeospatialPolygonStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PolygonSymbolStyle" Prelude.<$> polygonSymbolStyle]))
instance Property "PolygonSymbolStyle" GeospatialPolygonStyleProperty where
  type PropertyType "PolygonSymbolStyle" GeospatialPolygonStyleProperty = GeospatialPolygonSymbolStyleProperty
  set newValue GeospatialPolygonStyleProperty {..}
    = GeospatialPolygonStyleProperty
        {polygonSymbolStyle = Prelude.pure newValue, ..}