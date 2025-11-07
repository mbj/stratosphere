module Stratosphere.QuickSight.Analysis.GeospatialLayerMapConfigurationProperty (
        module Exports, GeospatialLayerMapConfigurationProperty(..),
        mkGeospatialLayerMapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialLayerItemProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialMapStateProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialMapStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualInteractionOptionsProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialLayerMapConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayermapconfiguration.html>
    GeospatialLayerMapConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayermapconfiguration.html#cfn-quicksight-analysis-geospatiallayermapconfiguration-interactions>
                                             interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayermapconfiguration.html#cfn-quicksight-analysis-geospatiallayermapconfiguration-legend>
                                             legend :: (Prelude.Maybe LegendOptionsProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayermapconfiguration.html#cfn-quicksight-analysis-geospatiallayermapconfiguration-maplayers>
                                             mapLayers :: (Prelude.Maybe [GeospatialLayerItemProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayermapconfiguration.html#cfn-quicksight-analysis-geospatiallayermapconfiguration-mapstate>
                                             mapState :: (Prelude.Maybe GeospatialMapStateProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayermapconfiguration.html#cfn-quicksight-analysis-geospatiallayermapconfiguration-mapstyle>
                                             mapStyle :: (Prelude.Maybe GeospatialMapStyleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialLayerMapConfigurationProperty ::
  GeospatialLayerMapConfigurationProperty
mkGeospatialLayerMapConfigurationProperty
  = GeospatialLayerMapConfigurationProperty
      {haddock_workaround_ = (), interactions = Prelude.Nothing,
       legend = Prelude.Nothing, mapLayers = Prelude.Nothing,
       mapState = Prelude.Nothing, mapStyle = Prelude.Nothing}
instance ToResourceProperties GeospatialLayerMapConfigurationProperty where
  toResourceProperties GeospatialLayerMapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialLayerMapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "MapLayers" Prelude.<$> mapLayers,
                            (JSON..=) "MapState" Prelude.<$> mapState,
                            (JSON..=) "MapStyle" Prelude.<$> mapStyle])}
instance JSON.ToJSON GeospatialLayerMapConfigurationProperty where
  toJSON GeospatialLayerMapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "MapLayers" Prelude.<$> mapLayers,
               (JSON..=) "MapState" Prelude.<$> mapState,
               (JSON..=) "MapStyle" Prelude.<$> mapStyle]))
instance Property "Interactions" GeospatialLayerMapConfigurationProperty where
  type PropertyType "Interactions" GeospatialLayerMapConfigurationProperty = VisualInteractionOptionsProperty
  set newValue GeospatialLayerMapConfigurationProperty {..}
    = GeospatialLayerMapConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" GeospatialLayerMapConfigurationProperty where
  type PropertyType "Legend" GeospatialLayerMapConfigurationProperty = LegendOptionsProperty
  set newValue GeospatialLayerMapConfigurationProperty {..}
    = GeospatialLayerMapConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "MapLayers" GeospatialLayerMapConfigurationProperty where
  type PropertyType "MapLayers" GeospatialLayerMapConfigurationProperty = [GeospatialLayerItemProperty]
  set newValue GeospatialLayerMapConfigurationProperty {..}
    = GeospatialLayerMapConfigurationProperty
        {mapLayers = Prelude.pure newValue, ..}
instance Property "MapState" GeospatialLayerMapConfigurationProperty where
  type PropertyType "MapState" GeospatialLayerMapConfigurationProperty = GeospatialMapStateProperty
  set newValue GeospatialLayerMapConfigurationProperty {..}
    = GeospatialLayerMapConfigurationProperty
        {mapState = Prelude.pure newValue, ..}
instance Property "MapStyle" GeospatialLayerMapConfigurationProperty where
  type PropertyType "MapStyle" GeospatialLayerMapConfigurationProperty = GeospatialMapStyleProperty
  set newValue GeospatialLayerMapConfigurationProperty {..}
    = GeospatialLayerMapConfigurationProperty
        {mapStyle = Prelude.pure newValue, ..}