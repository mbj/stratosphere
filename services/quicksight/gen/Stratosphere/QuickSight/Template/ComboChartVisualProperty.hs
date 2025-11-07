module Stratosphere.QuickSight.Template.ComboChartVisualProperty (
        module Exports, ComboChartVisualProperty(..),
        mkComboChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ComboChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComboChartVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartvisual.html>
    ComboChartVisualProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartvisual.html#cfn-quicksight-template-combochartvisual-actions>
                              actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartvisual.html#cfn-quicksight-template-combochartvisual-chartconfiguration>
                              chartConfiguration :: (Prelude.Maybe ComboChartConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartvisual.html#cfn-quicksight-template-combochartvisual-columnhierarchies>
                              columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartvisual.html#cfn-quicksight-template-combochartvisual-subtitle>
                              subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartvisual.html#cfn-quicksight-template-combochartvisual-title>
                              title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartvisual.html#cfn-quicksight-template-combochartvisual-visualcontentalttext>
                              visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartvisual.html#cfn-quicksight-template-combochartvisual-visualid>
                              visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComboChartVisualProperty ::
  Value Prelude.Text -> ComboChartVisualProperty
mkComboChartVisualProperty visualId
  = ComboChartVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties ComboChartVisualProperty where
  toResourceProperties ComboChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ComboChartVisual",
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
instance JSON.ToJSON ComboChartVisualProperty where
  toJSON ComboChartVisualProperty {..}
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
instance Property "Actions" ComboChartVisualProperty where
  type PropertyType "Actions" ComboChartVisualProperty = [VisualCustomActionProperty]
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" ComboChartVisualProperty where
  type PropertyType "ChartConfiguration" ComboChartVisualProperty = ComboChartConfigurationProperty
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" ComboChartVisualProperty where
  type PropertyType "ColumnHierarchies" ComboChartVisualProperty = [ColumnHierarchyProperty]
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" ComboChartVisualProperty where
  type PropertyType "Subtitle" ComboChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" ComboChartVisualProperty where
  type PropertyType "Title" ComboChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" ComboChartVisualProperty where
  type PropertyType "VisualContentAltText" ComboChartVisualProperty = Value Prelude.Text
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" ComboChartVisualProperty where
  type PropertyType "VisualId" ComboChartVisualProperty = Value Prelude.Text
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty {visualId = newValue, ..}