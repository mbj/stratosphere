module Stratosphere.QuickSight.Dashboard.HistogramVisualProperty (
        module Exports, HistogramVisualProperty(..),
        mkHistogramVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.HistogramConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HistogramVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html>
    HistogramVisualProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-actions>
                             actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-chartconfiguration>
                             chartConfiguration :: (Prelude.Maybe HistogramConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-subtitle>
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-title>
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-visualcontentalttext>
                             visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-visualid>
                             visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHistogramVisualProperty ::
  Value Prelude.Text -> HistogramVisualProperty
mkHistogramVisualProperty visualId
  = HistogramVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing,
       visualContentAltText = Prelude.Nothing}
instance ToResourceProperties HistogramVisualProperty where
  toResourceProperties HistogramVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.HistogramVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON HistogramVisualProperty where
  toJSON HistogramVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" HistogramVisualProperty where
  type PropertyType "Actions" HistogramVisualProperty = [VisualCustomActionProperty]
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" HistogramVisualProperty where
  type PropertyType "ChartConfiguration" HistogramVisualProperty = HistogramConfigurationProperty
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "Subtitle" HistogramVisualProperty where
  type PropertyType "Subtitle" HistogramVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" HistogramVisualProperty where
  type PropertyType "Title" HistogramVisualProperty = VisualTitleLabelOptionsProperty
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" HistogramVisualProperty where
  type PropertyType "VisualContentAltText" HistogramVisualProperty = Value Prelude.Text
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" HistogramVisualProperty where
  type PropertyType "VisualId" HistogramVisualProperty = Value Prelude.Text
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty {visualId = newValue, ..}