module Stratosphere.QuickSight.Template.GeospatialPointStyleOptionsProperty (
        module Exports, GeospatialPointStyleOptionsProperty(..),
        mkGeospatialPointStyleOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ClusterMarkerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialHeatmapConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialPointStyleOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialpointstyleoptions.html>
    GeospatialPointStyleOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialpointstyleoptions.html#cfn-quicksight-template-geospatialpointstyleoptions-clustermarkerconfiguration>
                                         clusterMarkerConfiguration :: (Prelude.Maybe ClusterMarkerConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialpointstyleoptions.html#cfn-quicksight-template-geospatialpointstyleoptions-heatmapconfiguration>
                                         heatmapConfiguration :: (Prelude.Maybe GeospatialHeatmapConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialpointstyleoptions.html#cfn-quicksight-template-geospatialpointstyleoptions-selectedpointstyle>
                                         selectedPointStyle :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialPointStyleOptionsProperty ::
  GeospatialPointStyleOptionsProperty
mkGeospatialPointStyleOptionsProperty
  = GeospatialPointStyleOptionsProperty
      {haddock_workaround_ = (),
       clusterMarkerConfiguration = Prelude.Nothing,
       heatmapConfiguration = Prelude.Nothing,
       selectedPointStyle = Prelude.Nothing}
instance ToResourceProperties GeospatialPointStyleOptionsProperty where
  toResourceProperties GeospatialPointStyleOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GeospatialPointStyleOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClusterMarkerConfiguration"
                              Prelude.<$> clusterMarkerConfiguration,
                            (JSON..=) "HeatmapConfiguration" Prelude.<$> heatmapConfiguration,
                            (JSON..=) "SelectedPointStyle" Prelude.<$> selectedPointStyle])}
instance JSON.ToJSON GeospatialPointStyleOptionsProperty where
  toJSON GeospatialPointStyleOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClusterMarkerConfiguration"
                 Prelude.<$> clusterMarkerConfiguration,
               (JSON..=) "HeatmapConfiguration" Prelude.<$> heatmapConfiguration,
               (JSON..=) "SelectedPointStyle" Prelude.<$> selectedPointStyle]))
instance Property "ClusterMarkerConfiguration" GeospatialPointStyleOptionsProperty where
  type PropertyType "ClusterMarkerConfiguration" GeospatialPointStyleOptionsProperty = ClusterMarkerConfigurationProperty
  set newValue GeospatialPointStyleOptionsProperty {..}
    = GeospatialPointStyleOptionsProperty
        {clusterMarkerConfiguration = Prelude.pure newValue, ..}
instance Property "HeatmapConfiguration" GeospatialPointStyleOptionsProperty where
  type PropertyType "HeatmapConfiguration" GeospatialPointStyleOptionsProperty = GeospatialHeatmapConfigurationProperty
  set newValue GeospatialPointStyleOptionsProperty {..}
    = GeospatialPointStyleOptionsProperty
        {heatmapConfiguration = Prelude.pure newValue, ..}
instance Property "SelectedPointStyle" GeospatialPointStyleOptionsProperty where
  type PropertyType "SelectedPointStyle" GeospatialPointStyleOptionsProperty = Value Prelude.Text
  set newValue GeospatialPointStyleOptionsProperty {..}
    = GeospatialPointStyleOptionsProperty
        {selectedPointStyle = Prelude.pure newValue, ..}