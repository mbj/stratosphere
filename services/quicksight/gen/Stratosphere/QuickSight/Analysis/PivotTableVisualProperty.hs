module Stratosphere.QuickSight.Analysis.PivotTableVisualProperty (
        module Exports, PivotTableVisualProperty(..),
        mkPivotTableVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PivotTableConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PivotTableConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablevisual.html>
    PivotTableVisualProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablevisual.html#cfn-quicksight-analysis-pivottablevisual-actions>
                              actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablevisual.html#cfn-quicksight-analysis-pivottablevisual-chartconfiguration>
                              chartConfiguration :: (Prelude.Maybe PivotTableConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablevisual.html#cfn-quicksight-analysis-pivottablevisual-conditionalformatting>
                              conditionalFormatting :: (Prelude.Maybe PivotTableConditionalFormattingProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablevisual.html#cfn-quicksight-analysis-pivottablevisual-subtitle>
                              subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablevisual.html#cfn-quicksight-analysis-pivottablevisual-title>
                              title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablevisual.html#cfn-quicksight-analysis-pivottablevisual-visualcontentalttext>
                              visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pivottablevisual.html#cfn-quicksight-analysis-pivottablevisual-visualid>
                              visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableVisualProperty ::
  Value Prelude.Text -> PivotTableVisualProperty
mkPivotTableVisualProperty visualId
  = PivotTableVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing,
       visualContentAltText = Prelude.Nothing}
instance ToResourceProperties PivotTableVisualProperty where
  toResourceProperties PivotTableVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PivotTableVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ConditionalFormatting"
                                 Prelude.<$> conditionalFormatting,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON PivotTableVisualProperty where
  toJSON PivotTableVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ConditionalFormatting"
                    Prelude.<$> conditionalFormatting,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" PivotTableVisualProperty where
  type PropertyType "Actions" PivotTableVisualProperty = [VisualCustomActionProperty]
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" PivotTableVisualProperty where
  type PropertyType "ChartConfiguration" PivotTableVisualProperty = PivotTableConfigurationProperty
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ConditionalFormatting" PivotTableVisualProperty where
  type PropertyType "ConditionalFormatting" PivotTableVisualProperty = PivotTableConditionalFormattingProperty
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty
        {conditionalFormatting = Prelude.pure newValue, ..}
instance Property "Subtitle" PivotTableVisualProperty where
  type PropertyType "Subtitle" PivotTableVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" PivotTableVisualProperty where
  type PropertyType "Title" PivotTableVisualProperty = VisualTitleLabelOptionsProperty
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" PivotTableVisualProperty where
  type PropertyType "VisualContentAltText" PivotTableVisualProperty = Value Prelude.Text
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" PivotTableVisualProperty where
  type PropertyType "VisualId" PivotTableVisualProperty = Value Prelude.Text
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty {visualId = newValue, ..}