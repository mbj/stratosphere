module Stratosphere.QuickSight.Analysis.GeospatialCircleSymbolStyleProperty (
        module Exports, GeospatialCircleSymbolStyleProperty(..),
        mkGeospatialCircleSymbolStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialCircleRadiusProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialLineWidthProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialCircleSymbolStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialcirclesymbolstyle.html>
    GeospatialCircleSymbolStyleProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialcirclesymbolstyle.html#cfn-quicksight-analysis-geospatialcirclesymbolstyle-circleradius>
                                         circleRadius :: (Prelude.Maybe GeospatialCircleRadiusProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialcirclesymbolstyle.html#cfn-quicksight-analysis-geospatialcirclesymbolstyle-fillcolor>
                                         fillColor :: (Prelude.Maybe GeospatialColorProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialcirclesymbolstyle.html#cfn-quicksight-analysis-geospatialcirclesymbolstyle-strokecolor>
                                         strokeColor :: (Prelude.Maybe GeospatialColorProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialcirclesymbolstyle.html#cfn-quicksight-analysis-geospatialcirclesymbolstyle-strokewidth>
                                         strokeWidth :: (Prelude.Maybe GeospatialLineWidthProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialCircleSymbolStyleProperty ::
  GeospatialCircleSymbolStyleProperty
mkGeospatialCircleSymbolStyleProperty
  = GeospatialCircleSymbolStyleProperty
      {haddock_workaround_ = (), circleRadius = Prelude.Nothing,
       fillColor = Prelude.Nothing, strokeColor = Prelude.Nothing,
       strokeWidth = Prelude.Nothing}
instance ToResourceProperties GeospatialCircleSymbolStyleProperty where
  toResourceProperties GeospatialCircleSymbolStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialCircleSymbolStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CircleRadius" Prelude.<$> circleRadius,
                            (JSON..=) "FillColor" Prelude.<$> fillColor,
                            (JSON..=) "StrokeColor" Prelude.<$> strokeColor,
                            (JSON..=) "StrokeWidth" Prelude.<$> strokeWidth])}
instance JSON.ToJSON GeospatialCircleSymbolStyleProperty where
  toJSON GeospatialCircleSymbolStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CircleRadius" Prelude.<$> circleRadius,
               (JSON..=) "FillColor" Prelude.<$> fillColor,
               (JSON..=) "StrokeColor" Prelude.<$> strokeColor,
               (JSON..=) "StrokeWidth" Prelude.<$> strokeWidth]))
instance Property "CircleRadius" GeospatialCircleSymbolStyleProperty where
  type PropertyType "CircleRadius" GeospatialCircleSymbolStyleProperty = GeospatialCircleRadiusProperty
  set newValue GeospatialCircleSymbolStyleProperty {..}
    = GeospatialCircleSymbolStyleProperty
        {circleRadius = Prelude.pure newValue, ..}
instance Property "FillColor" GeospatialCircleSymbolStyleProperty where
  type PropertyType "FillColor" GeospatialCircleSymbolStyleProperty = GeospatialColorProperty
  set newValue GeospatialCircleSymbolStyleProperty {..}
    = GeospatialCircleSymbolStyleProperty
        {fillColor = Prelude.pure newValue, ..}
instance Property "StrokeColor" GeospatialCircleSymbolStyleProperty where
  type PropertyType "StrokeColor" GeospatialCircleSymbolStyleProperty = GeospatialColorProperty
  set newValue GeospatialCircleSymbolStyleProperty {..}
    = GeospatialCircleSymbolStyleProperty
        {strokeColor = Prelude.pure newValue, ..}
instance Property "StrokeWidth" GeospatialCircleSymbolStyleProperty where
  type PropertyType "StrokeWidth" GeospatialCircleSymbolStyleProperty = GeospatialLineWidthProperty
  set newValue GeospatialCircleSymbolStyleProperty {..}
    = GeospatialCircleSymbolStyleProperty
        {strokeWidth = Prelude.pure newValue, ..}