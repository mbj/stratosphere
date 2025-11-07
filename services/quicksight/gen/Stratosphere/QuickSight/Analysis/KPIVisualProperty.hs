module Stratosphere.QuickSight.Analysis.KPIVisualProperty (
        module Exports, KPIVisualProperty(..), mkKPIVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPIConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPIConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KPIVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpivisual.html>
    KPIVisualProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpivisual.html#cfn-quicksight-analysis-kpivisual-actions>
                       actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpivisual.html#cfn-quicksight-analysis-kpivisual-chartconfiguration>
                       chartConfiguration :: (Prelude.Maybe KPIConfigurationProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpivisual.html#cfn-quicksight-analysis-kpivisual-columnhierarchies>
                       columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpivisual.html#cfn-quicksight-analysis-kpivisual-conditionalformatting>
                       conditionalFormatting :: (Prelude.Maybe KPIConditionalFormattingProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpivisual.html#cfn-quicksight-analysis-kpivisual-subtitle>
                       subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpivisual.html#cfn-quicksight-analysis-kpivisual-title>
                       title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpivisual.html#cfn-quicksight-analysis-kpivisual-visualcontentalttext>
                       visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpivisual.html#cfn-quicksight-analysis-kpivisual-visualid>
                       visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIVisualProperty :: Value Prelude.Text -> KPIVisualProperty
mkKPIVisualProperty visualId
  = KPIVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing,
       visualContentAltText = Prelude.Nothing}
instance ToResourceProperties KPIVisualProperty where
  toResourceProperties KPIVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPIVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                               (JSON..=) "ConditionalFormatting"
                                 Prelude.<$> conditionalFormatting,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON KPIVisualProperty where
  toJSON KPIVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                  (JSON..=) "ConditionalFormatting"
                    Prelude.<$> conditionalFormatting,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" KPIVisualProperty where
  type PropertyType "Actions" KPIVisualProperty = [VisualCustomActionProperty]
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" KPIVisualProperty where
  type PropertyType "ChartConfiguration" KPIVisualProperty = KPIConfigurationProperty
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" KPIVisualProperty where
  type PropertyType "ColumnHierarchies" KPIVisualProperty = [ColumnHierarchyProperty]
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {columnHierarchies = Prelude.pure newValue, ..}
instance Property "ConditionalFormatting" KPIVisualProperty where
  type PropertyType "ConditionalFormatting" KPIVisualProperty = KPIConditionalFormattingProperty
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty
        {conditionalFormatting = Prelude.pure newValue, ..}
instance Property "Subtitle" KPIVisualProperty where
  type PropertyType "Subtitle" KPIVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" KPIVisualProperty where
  type PropertyType "Title" KPIVisualProperty = VisualTitleLabelOptionsProperty
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" KPIVisualProperty where
  type PropertyType "VisualContentAltText" KPIVisualProperty = Value Prelude.Text
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" KPIVisualProperty where
  type PropertyType "VisualId" KPIVisualProperty = Value Prelude.Text
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {visualId = newValue, ..}