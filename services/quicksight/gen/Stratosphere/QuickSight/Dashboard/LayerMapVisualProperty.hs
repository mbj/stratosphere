module Stratosphere.QuickSight.Dashboard.LayerMapVisualProperty (
        module Exports, LayerMapVisualProperty(..),
        mkLayerMapVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialLayerMapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LayerMapVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layermapvisual.html>
    LayerMapVisualProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layermapvisual.html#cfn-quicksight-dashboard-layermapvisual-chartconfiguration>
                            chartConfiguration :: (Prelude.Maybe GeospatialLayerMapConfigurationProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layermapvisual.html#cfn-quicksight-dashboard-layermapvisual-datasetidentifier>
                            dataSetIdentifier :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layermapvisual.html#cfn-quicksight-dashboard-layermapvisual-subtitle>
                            subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layermapvisual.html#cfn-quicksight-dashboard-layermapvisual-title>
                            title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layermapvisual.html#cfn-quicksight-dashboard-layermapvisual-visualcontentalttext>
                            visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-layermapvisual.html#cfn-quicksight-dashboard-layermapvisual-visualid>
                            visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLayerMapVisualProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LayerMapVisualProperty
mkLayerMapVisualProperty dataSetIdentifier visualId
  = LayerMapVisualProperty
      {haddock_workaround_ = (), dataSetIdentifier = dataSetIdentifier,
       visualId = visualId, chartConfiguration = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing,
       visualContentAltText = Prelude.Nothing}
instance ToResourceProperties LayerMapVisualProperty where
  toResourceProperties LayerMapVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.LayerMapVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSetIdentifier" JSON..= dataSetIdentifier,
                            "VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON LayerMapVisualProperty where
  toJSON LayerMapVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSetIdentifier" JSON..= dataSetIdentifier,
               "VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "ChartConfiguration" LayerMapVisualProperty where
  type PropertyType "ChartConfiguration" LayerMapVisualProperty = GeospatialLayerMapConfigurationProperty
  set newValue LayerMapVisualProperty {..}
    = LayerMapVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "DataSetIdentifier" LayerMapVisualProperty where
  type PropertyType "DataSetIdentifier" LayerMapVisualProperty = Value Prelude.Text
  set newValue LayerMapVisualProperty {..}
    = LayerMapVisualProperty {dataSetIdentifier = newValue, ..}
instance Property "Subtitle" LayerMapVisualProperty where
  type PropertyType "Subtitle" LayerMapVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue LayerMapVisualProperty {..}
    = LayerMapVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" LayerMapVisualProperty where
  type PropertyType "Title" LayerMapVisualProperty = VisualTitleLabelOptionsProperty
  set newValue LayerMapVisualProperty {..}
    = LayerMapVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" LayerMapVisualProperty where
  type PropertyType "VisualContentAltText" LayerMapVisualProperty = Value Prelude.Text
  set newValue LayerMapVisualProperty {..}
    = LayerMapVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" LayerMapVisualProperty where
  type PropertyType "VisualId" LayerMapVisualProperty = Value Prelude.Text
  set newValue LayerMapVisualProperty {..}
    = LayerMapVisualProperty {visualId = newValue, ..}