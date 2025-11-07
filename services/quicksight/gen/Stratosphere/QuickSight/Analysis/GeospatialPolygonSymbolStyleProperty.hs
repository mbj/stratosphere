module Stratosphere.QuickSight.Analysis.GeospatialPolygonSymbolStyleProperty (
        module Exports, GeospatialPolygonSymbolStyleProperty(..),
        mkGeospatialPolygonSymbolStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialLineWidthProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialPolygonSymbolStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpolygonsymbolstyle.html>
    GeospatialPolygonSymbolStyleProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpolygonsymbolstyle.html#cfn-quicksight-analysis-geospatialpolygonsymbolstyle-fillcolor>
                                          fillColor :: (Prelude.Maybe GeospatialColorProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpolygonsymbolstyle.html#cfn-quicksight-analysis-geospatialpolygonsymbolstyle-strokecolor>
                                          strokeColor :: (Prelude.Maybe GeospatialColorProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpolygonsymbolstyle.html#cfn-quicksight-analysis-geospatialpolygonsymbolstyle-strokewidth>
                                          strokeWidth :: (Prelude.Maybe GeospatialLineWidthProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialPolygonSymbolStyleProperty ::
  GeospatialPolygonSymbolStyleProperty
mkGeospatialPolygonSymbolStyleProperty
  = GeospatialPolygonSymbolStyleProperty
      {haddock_workaround_ = (), fillColor = Prelude.Nothing,
       strokeColor = Prelude.Nothing, strokeWidth = Prelude.Nothing}
instance ToResourceProperties GeospatialPolygonSymbolStyleProperty where
  toResourceProperties GeospatialPolygonSymbolStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialPolygonSymbolStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FillColor" Prelude.<$> fillColor,
                            (JSON..=) "StrokeColor" Prelude.<$> strokeColor,
                            (JSON..=) "StrokeWidth" Prelude.<$> strokeWidth])}
instance JSON.ToJSON GeospatialPolygonSymbolStyleProperty where
  toJSON GeospatialPolygonSymbolStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FillColor" Prelude.<$> fillColor,
               (JSON..=) "StrokeColor" Prelude.<$> strokeColor,
               (JSON..=) "StrokeWidth" Prelude.<$> strokeWidth]))
instance Property "FillColor" GeospatialPolygonSymbolStyleProperty where
  type PropertyType "FillColor" GeospatialPolygonSymbolStyleProperty = GeospatialColorProperty
  set newValue GeospatialPolygonSymbolStyleProperty {..}
    = GeospatialPolygonSymbolStyleProperty
        {fillColor = Prelude.pure newValue, ..}
instance Property "StrokeColor" GeospatialPolygonSymbolStyleProperty where
  type PropertyType "StrokeColor" GeospatialPolygonSymbolStyleProperty = GeospatialColorProperty
  set newValue GeospatialPolygonSymbolStyleProperty {..}
    = GeospatialPolygonSymbolStyleProperty
        {strokeColor = Prelude.pure newValue, ..}
instance Property "StrokeWidth" GeospatialPolygonSymbolStyleProperty where
  type PropertyType "StrokeWidth" GeospatialPolygonSymbolStyleProperty = GeospatialLineWidthProperty
  set newValue GeospatialPolygonSymbolStyleProperty {..}
    = GeospatialPolygonSymbolStyleProperty
        {strokeWidth = Prelude.pure newValue, ..}