module Stratosphere.QuickSight.Analysis.GeospatialLayerColorFieldProperty (
        module Exports, GeospatialLayerColorFieldProperty(..),
        mkGeospatialLayerColorFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialLayerColorFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayercolorfield.html>
    GeospatialLayerColorFieldProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayercolorfield.html#cfn-quicksight-analysis-geospatiallayercolorfield-colordimensionsfields>
                                       colorDimensionsFields :: (Prelude.Maybe [DimensionFieldProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayercolorfield.html#cfn-quicksight-analysis-geospatiallayercolorfield-colorvaluesfields>
                                       colorValuesFields :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialLayerColorFieldProperty ::
  GeospatialLayerColorFieldProperty
mkGeospatialLayerColorFieldProperty
  = GeospatialLayerColorFieldProperty
      {haddock_workaround_ = (), colorDimensionsFields = Prelude.Nothing,
       colorValuesFields = Prelude.Nothing}
instance ToResourceProperties GeospatialLayerColorFieldProperty where
  toResourceProperties GeospatialLayerColorFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialLayerColorField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorDimensionsFields"
                              Prelude.<$> colorDimensionsFields,
                            (JSON..=) "ColorValuesFields" Prelude.<$> colorValuesFields])}
instance JSON.ToJSON GeospatialLayerColorFieldProperty where
  toJSON GeospatialLayerColorFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorDimensionsFields"
                 Prelude.<$> colorDimensionsFields,
               (JSON..=) "ColorValuesFields" Prelude.<$> colorValuesFields]))
instance Property "ColorDimensionsFields" GeospatialLayerColorFieldProperty where
  type PropertyType "ColorDimensionsFields" GeospatialLayerColorFieldProperty = [DimensionFieldProperty]
  set newValue GeospatialLayerColorFieldProperty {..}
    = GeospatialLayerColorFieldProperty
        {colorDimensionsFields = Prelude.pure newValue, ..}
instance Property "ColorValuesFields" GeospatialLayerColorFieldProperty where
  type PropertyType "ColorValuesFields" GeospatialLayerColorFieldProperty = [MeasureFieldProperty]
  set newValue GeospatialLayerColorFieldProperty {..}
    = GeospatialLayerColorFieldProperty
        {colorValuesFields = Prelude.pure newValue, ..}