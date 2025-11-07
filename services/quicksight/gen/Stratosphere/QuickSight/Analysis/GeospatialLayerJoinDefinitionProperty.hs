module Stratosphere.QuickSight.Analysis.GeospatialLayerJoinDefinitionProperty (
        module Exports, GeospatialLayerJoinDefinitionProperty(..),
        mkGeospatialLayerJoinDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialLayerColorFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.UnaggregatedFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialLayerJoinDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayerjoindefinition.html>
    GeospatialLayerJoinDefinitionProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayerjoindefinition.html#cfn-quicksight-analysis-geospatiallayerjoindefinition-colorfield>
                                           colorField :: (Prelude.Maybe GeospatialLayerColorFieldProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayerjoindefinition.html#cfn-quicksight-analysis-geospatiallayerjoindefinition-datasetkeyfield>
                                           datasetKeyField :: (Prelude.Maybe UnaggregatedFieldProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayerjoindefinition.html#cfn-quicksight-analysis-geospatiallayerjoindefinition-shapekeyfield>
                                           shapeKeyField :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialLayerJoinDefinitionProperty ::
  GeospatialLayerJoinDefinitionProperty
mkGeospatialLayerJoinDefinitionProperty
  = GeospatialLayerJoinDefinitionProperty
      {haddock_workaround_ = (), colorField = Prelude.Nothing,
       datasetKeyField = Prelude.Nothing, shapeKeyField = Prelude.Nothing}
instance ToResourceProperties GeospatialLayerJoinDefinitionProperty where
  toResourceProperties GeospatialLayerJoinDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialLayerJoinDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorField" Prelude.<$> colorField,
                            (JSON..=) "DatasetKeyField" Prelude.<$> datasetKeyField,
                            (JSON..=) "ShapeKeyField" Prelude.<$> shapeKeyField])}
instance JSON.ToJSON GeospatialLayerJoinDefinitionProperty where
  toJSON GeospatialLayerJoinDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorField" Prelude.<$> colorField,
               (JSON..=) "DatasetKeyField" Prelude.<$> datasetKeyField,
               (JSON..=) "ShapeKeyField" Prelude.<$> shapeKeyField]))
instance Property "ColorField" GeospatialLayerJoinDefinitionProperty where
  type PropertyType "ColorField" GeospatialLayerJoinDefinitionProperty = GeospatialLayerColorFieldProperty
  set newValue GeospatialLayerJoinDefinitionProperty {..}
    = GeospatialLayerJoinDefinitionProperty
        {colorField = Prelude.pure newValue, ..}
instance Property "DatasetKeyField" GeospatialLayerJoinDefinitionProperty where
  type PropertyType "DatasetKeyField" GeospatialLayerJoinDefinitionProperty = UnaggregatedFieldProperty
  set newValue GeospatialLayerJoinDefinitionProperty {..}
    = GeospatialLayerJoinDefinitionProperty
        {datasetKeyField = Prelude.pure newValue, ..}
instance Property "ShapeKeyField" GeospatialLayerJoinDefinitionProperty where
  type PropertyType "ShapeKeyField" GeospatialLayerJoinDefinitionProperty = Value Prelude.Text
  set newValue GeospatialLayerJoinDefinitionProperty {..}
    = GeospatialLayerJoinDefinitionProperty
        {shapeKeyField = Prelude.pure newValue, ..}