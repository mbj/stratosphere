module Stratosphere.QuickSight.Analysis.GeospatialLayerItemProperty (
        module Exports, GeospatialLayerItemProperty(..),
        mkGeospatialLayerItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialDataSourceItemProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialLayerDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialLayerJoinDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LayerCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialLayerItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html>
    GeospatialLayerItemProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-actions>
                                 actions :: (Prelude.Maybe [LayerCustomActionProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-datasource>
                                 dataSource :: (Prelude.Maybe GeospatialDataSourceItemProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-joindefinition>
                                 joinDefinition :: (Prelude.Maybe GeospatialLayerJoinDefinitionProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-label>
                                 label :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-layerdefinition>
                                 layerDefinition :: (Prelude.Maybe GeospatialLayerDefinitionProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-layerid>
                                 layerId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-layertype>
                                 layerType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-tooltip>
                                 tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-visibility>
                                 visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialLayerItemProperty ::
  Value Prelude.Text -> GeospatialLayerItemProperty
mkGeospatialLayerItemProperty layerId
  = GeospatialLayerItemProperty
      {haddock_workaround_ = (), layerId = layerId,
       actions = Prelude.Nothing, dataSource = Prelude.Nothing,
       joinDefinition = Prelude.Nothing, label = Prelude.Nothing,
       layerDefinition = Prelude.Nothing, layerType = Prelude.Nothing,
       tooltip = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties GeospatialLayerItemProperty where
  toResourceProperties GeospatialLayerItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialLayerItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LayerId" JSON..= layerId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "DataSource" Prelude.<$> dataSource,
                               (JSON..=) "JoinDefinition" Prelude.<$> joinDefinition,
                               (JSON..=) "Label" Prelude.<$> label,
                               (JSON..=) "LayerDefinition" Prelude.<$> layerDefinition,
                               (JSON..=) "LayerType" Prelude.<$> layerType,
                               (JSON..=) "Tooltip" Prelude.<$> tooltip,
                               (JSON..=) "Visibility" Prelude.<$> visibility]))}
instance JSON.ToJSON GeospatialLayerItemProperty where
  toJSON GeospatialLayerItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LayerId" JSON..= layerId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "DataSource" Prelude.<$> dataSource,
                  (JSON..=) "JoinDefinition" Prelude.<$> joinDefinition,
                  (JSON..=) "Label" Prelude.<$> label,
                  (JSON..=) "LayerDefinition" Prelude.<$> layerDefinition,
                  (JSON..=) "LayerType" Prelude.<$> layerType,
                  (JSON..=) "Tooltip" Prelude.<$> tooltip,
                  (JSON..=) "Visibility" Prelude.<$> visibility])))
instance Property "Actions" GeospatialLayerItemProperty where
  type PropertyType "Actions" GeospatialLayerItemProperty = [LayerCustomActionProperty]
  set newValue GeospatialLayerItemProperty {..}
    = GeospatialLayerItemProperty {actions = Prelude.pure newValue, ..}
instance Property "DataSource" GeospatialLayerItemProperty where
  type PropertyType "DataSource" GeospatialLayerItemProperty = GeospatialDataSourceItemProperty
  set newValue GeospatialLayerItemProperty {..}
    = GeospatialLayerItemProperty
        {dataSource = Prelude.pure newValue, ..}
instance Property "JoinDefinition" GeospatialLayerItemProperty where
  type PropertyType "JoinDefinition" GeospatialLayerItemProperty = GeospatialLayerJoinDefinitionProperty
  set newValue GeospatialLayerItemProperty {..}
    = GeospatialLayerItemProperty
        {joinDefinition = Prelude.pure newValue, ..}
instance Property "Label" GeospatialLayerItemProperty where
  type PropertyType "Label" GeospatialLayerItemProperty = Value Prelude.Text
  set newValue GeospatialLayerItemProperty {..}
    = GeospatialLayerItemProperty {label = Prelude.pure newValue, ..}
instance Property "LayerDefinition" GeospatialLayerItemProperty where
  type PropertyType "LayerDefinition" GeospatialLayerItemProperty = GeospatialLayerDefinitionProperty
  set newValue GeospatialLayerItemProperty {..}
    = GeospatialLayerItemProperty
        {layerDefinition = Prelude.pure newValue, ..}
instance Property "LayerId" GeospatialLayerItemProperty where
  type PropertyType "LayerId" GeospatialLayerItemProperty = Value Prelude.Text
  set newValue GeospatialLayerItemProperty {..}
    = GeospatialLayerItemProperty {layerId = newValue, ..}
instance Property "LayerType" GeospatialLayerItemProperty where
  type PropertyType "LayerType" GeospatialLayerItemProperty = Value Prelude.Text
  set newValue GeospatialLayerItemProperty {..}
    = GeospatialLayerItemProperty
        {layerType = Prelude.pure newValue, ..}
instance Property "Tooltip" GeospatialLayerItemProperty where
  type PropertyType "Tooltip" GeospatialLayerItemProperty = TooltipOptionsProperty
  set newValue GeospatialLayerItemProperty {..}
    = GeospatialLayerItemProperty {tooltip = Prelude.pure newValue, ..}
instance Property "Visibility" GeospatialLayerItemProperty where
  type PropertyType "Visibility" GeospatialLayerItemProperty = Value Prelude.Text
  set newValue GeospatialLayerItemProperty {..}
    = GeospatialLayerItemProperty
        {visibility = Prelude.pure newValue, ..}