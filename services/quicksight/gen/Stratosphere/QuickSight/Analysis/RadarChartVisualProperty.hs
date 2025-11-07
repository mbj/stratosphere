module Stratosphere.QuickSight.Analysis.RadarChartVisualProperty (
        module Exports, RadarChartVisualProperty(..),
        mkRadarChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.RadarChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RadarChartVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartvisual.html>
    RadarChartVisualProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartvisual.html#cfn-quicksight-analysis-radarchartvisual-actions>
                              actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartvisual.html#cfn-quicksight-analysis-radarchartvisual-chartconfiguration>
                              chartConfiguration :: (Prelude.Maybe RadarChartConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartvisual.html#cfn-quicksight-analysis-radarchartvisual-columnhierarchies>
                              columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartvisual.html#cfn-quicksight-analysis-radarchartvisual-subtitle>
                              subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartvisual.html#cfn-quicksight-analysis-radarchartvisual-title>
                              title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartvisual.html#cfn-quicksight-analysis-radarchartvisual-visualcontentalttext>
                              visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartvisual.html#cfn-quicksight-analysis-radarchartvisual-visualid>
                              visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartVisualProperty ::
  Value Prelude.Text -> RadarChartVisualProperty
mkRadarChartVisualProperty visualId
  = RadarChartVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties RadarChartVisualProperty where
  toResourceProperties RadarChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RadarChartVisual",
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
instance JSON.ToJSON RadarChartVisualProperty where
  toJSON RadarChartVisualProperty {..}
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
instance Property "Actions" RadarChartVisualProperty where
  type PropertyType "Actions" RadarChartVisualProperty = [VisualCustomActionProperty]
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" RadarChartVisualProperty where
  type PropertyType "ChartConfiguration" RadarChartVisualProperty = RadarChartConfigurationProperty
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" RadarChartVisualProperty where
  type PropertyType "ColumnHierarchies" RadarChartVisualProperty = [ColumnHierarchyProperty]
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" RadarChartVisualProperty where
  type PropertyType "Subtitle" RadarChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" RadarChartVisualProperty where
  type PropertyType "Title" RadarChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" RadarChartVisualProperty where
  type PropertyType "VisualContentAltText" RadarChartVisualProperty = Value Prelude.Text
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" RadarChartVisualProperty where
  type PropertyType "VisualId" RadarChartVisualProperty = Value Prelude.Text
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty {visualId = newValue, ..}