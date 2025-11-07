module Stratosphere.QuickSight.Dashboard.TableVisualProperty (
        module Exports, TableVisualProperty(..), mkTableVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablevisual.html>
    TableVisualProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablevisual.html#cfn-quicksight-dashboard-tablevisual-actions>
                         actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablevisual.html#cfn-quicksight-dashboard-tablevisual-chartconfiguration>
                         chartConfiguration :: (Prelude.Maybe TableConfigurationProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablevisual.html#cfn-quicksight-dashboard-tablevisual-conditionalformatting>
                         conditionalFormatting :: (Prelude.Maybe TableConditionalFormattingProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablevisual.html#cfn-quicksight-dashboard-tablevisual-subtitle>
                         subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablevisual.html#cfn-quicksight-dashboard-tablevisual-title>
                         title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablevisual.html#cfn-quicksight-dashboard-tablevisual-visualcontentalttext>
                         visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablevisual.html#cfn-quicksight-dashboard-tablevisual-visualid>
                         visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableVisualProperty :: Value Prelude.Text -> TableVisualProperty
mkTableVisualProperty visualId
  = TableVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing,
       visualContentAltText = Prelude.Nothing}
instance ToResourceProperties TableVisualProperty where
  toResourceProperties TableVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableVisual",
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
instance JSON.ToJSON TableVisualProperty where
  toJSON TableVisualProperty {..}
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
instance Property "Actions" TableVisualProperty where
  type PropertyType "Actions" TableVisualProperty = [VisualCustomActionProperty]
  set newValue TableVisualProperty {..}
    = TableVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" TableVisualProperty where
  type PropertyType "ChartConfiguration" TableVisualProperty = TableConfigurationProperty
  set newValue TableVisualProperty {..}
    = TableVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ConditionalFormatting" TableVisualProperty where
  type PropertyType "ConditionalFormatting" TableVisualProperty = TableConditionalFormattingProperty
  set newValue TableVisualProperty {..}
    = TableVisualProperty
        {conditionalFormatting = Prelude.pure newValue, ..}
instance Property "Subtitle" TableVisualProperty where
  type PropertyType "Subtitle" TableVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue TableVisualProperty {..}
    = TableVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" TableVisualProperty where
  type PropertyType "Title" TableVisualProperty = VisualTitleLabelOptionsProperty
  set newValue TableVisualProperty {..}
    = TableVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" TableVisualProperty where
  type PropertyType "VisualContentAltText" TableVisualProperty = Value Prelude.Text
  set newValue TableVisualProperty {..}
    = TableVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" TableVisualProperty where
  type PropertyType "VisualId" TableVisualProperty = Value Prelude.Text
  set newValue TableVisualProperty {..}
    = TableVisualProperty {visualId = newValue, ..}