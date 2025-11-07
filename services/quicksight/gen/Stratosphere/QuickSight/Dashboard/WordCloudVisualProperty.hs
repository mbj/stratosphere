module Stratosphere.QuickSight.Dashboard.WordCloudVisualProperty (
        module Exports, WordCloudVisualProperty(..),
        mkWordCloudVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualTitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WordCloudChartConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WordCloudVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudvisual.html>
    WordCloudVisualProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudvisual.html#cfn-quicksight-dashboard-wordcloudvisual-actions>
                             actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudvisual.html#cfn-quicksight-dashboard-wordcloudvisual-chartconfiguration>
                             chartConfiguration :: (Prelude.Maybe WordCloudChartConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudvisual.html#cfn-quicksight-dashboard-wordcloudvisual-columnhierarchies>
                             columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudvisual.html#cfn-quicksight-dashboard-wordcloudvisual-subtitle>
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudvisual.html#cfn-quicksight-dashboard-wordcloudvisual-title>
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudvisual.html#cfn-quicksight-dashboard-wordcloudvisual-visualcontentalttext>
                             visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudvisual.html#cfn-quicksight-dashboard-wordcloudvisual-visualid>
                             visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWordCloudVisualProperty ::
  Value Prelude.Text -> WordCloudVisualProperty
mkWordCloudVisualProperty visualId
  = WordCloudVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties WordCloudVisualProperty where
  toResourceProperties WordCloudVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WordCloudVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON WordCloudVisualProperty where
  toJSON WordCloudVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" WordCloudVisualProperty where
  type PropertyType "Actions" WordCloudVisualProperty = [VisualCustomActionProperty]
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" WordCloudVisualProperty where
  type PropertyType "ChartConfiguration" WordCloudVisualProperty = WordCloudChartConfigurationProperty
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" WordCloudVisualProperty where
  type PropertyType "ColumnHierarchies" WordCloudVisualProperty = [ColumnHierarchyProperty]
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" WordCloudVisualProperty where
  type PropertyType "Subtitle" WordCloudVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" WordCloudVisualProperty where
  type PropertyType "Title" WordCloudVisualProperty = VisualTitleLabelOptionsProperty
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" WordCloudVisualProperty where
  type PropertyType "VisualContentAltText" WordCloudVisualProperty = Value Prelude.Text
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" WordCloudVisualProperty where
  type PropertyType "VisualId" WordCloudVisualProperty = Value Prelude.Text
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty {visualId = newValue, ..}