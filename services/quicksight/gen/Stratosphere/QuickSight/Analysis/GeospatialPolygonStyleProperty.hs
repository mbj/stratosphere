module Stratosphere.QuickSight.Analysis.GeospatialPolygonStyleProperty (
        module Exports, GeospatialPolygonStyleProperty(..),
        mkGeospatialPolygonStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialPolygonSymbolStyleProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialPolygonStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpolygonstyle.html>
    GeospatialPolygonStyleProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpolygonstyle.html#cfn-quicksight-analysis-geospatialpolygonstyle-polygonsymbolstyle>
                                    polygonSymbolStyle :: (Prelude.Maybe GeospatialPolygonSymbolStyleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialPolygonStyleProperty :: GeospatialPolygonStyleProperty
mkGeospatialPolygonStyleProperty
  = GeospatialPolygonStyleProperty
      {haddock_workaround_ = (), polygonSymbolStyle = Prelude.Nothing}
instance ToResourceProperties GeospatialPolygonStyleProperty where
  toResourceProperties GeospatialPolygonStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialPolygonStyle",
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