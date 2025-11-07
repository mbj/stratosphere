module Stratosphere.QuickSight.Template.BarChartVisualProperty (
        module Exports, BarChartVisualProperty(..),
        mkBarChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BarChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BarChartVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartvisual.html>
    BarChartVisualProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartvisual.html#cfn-quicksight-template-barchartvisual-actions>
                            actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartvisual.html#cfn-quicksight-template-barchartvisual-chartconfiguration>
                            chartConfiguration :: (Prelude.Maybe BarChartConfigurationProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartvisual.html#cfn-quicksight-template-barchartvisual-columnhierarchies>
                            columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartvisual.html#cfn-quicksight-template-barchartvisual-subtitle>
                            subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartvisual.html#cfn-quicksight-template-barchartvisual-title>
                            title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartvisual.html#cfn-quicksight-template-barchartvisual-visualcontentalttext>
                            visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartvisual.html#cfn-quicksight-template-barchartvisual-visualid>
                            visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBarChartVisualProperty ::
  Value Prelude.Text -> BarChartVisualProperty
mkBarChartVisualProperty visualId
  = BarChartVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties BarChartVisualProperty where
  toResourceProperties BarChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.BarChartVisual",
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
instance JSON.ToJSON BarChartVisualProperty where
  toJSON BarChartVisualProperty {..}
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
instance Property "Actions" BarChartVisualProperty where
  type PropertyType "Actions" BarChartVisualProperty = [VisualCustomActionProperty]
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" BarChartVisualProperty where
  type PropertyType "ChartConfiguration" BarChartVisualProperty = BarChartConfigurationProperty
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" BarChartVisualProperty where
  type PropertyType "ColumnHierarchies" BarChartVisualProperty = [ColumnHierarchyProperty]
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" BarChartVisualProperty where
  type PropertyType "Subtitle" BarChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" BarChartVisualProperty where
  type PropertyType "Title" BarChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" BarChartVisualProperty where
  type PropertyType "VisualContentAltText" BarChartVisualProperty = Value Prelude.Text
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" BarChartVisualProperty where
  type PropertyType "VisualId" BarChartVisualProperty = Value Prelude.Text
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty {visualId = newValue, ..}