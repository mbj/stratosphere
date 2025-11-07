module Stratosphere.QuickSight.Dashboard.FieldTooltipItemProperty (
        FieldTooltipItemProperty(..), mkFieldTooltipItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldTooltipItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-fieldtooltipitem.html>
    FieldTooltipItemProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-fieldtooltipitem.html#cfn-quicksight-dashboard-fieldtooltipitem-fieldid>
                              fieldId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-fieldtooltipitem.html#cfn-quicksight-dashboard-fieldtooltipitem-label>
                              label :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-fieldtooltipitem.html#cfn-quicksight-dashboard-fieldtooltipitem-tooltiptarget>
                              tooltipTarget :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-fieldtooltipitem.html#cfn-quicksight-dashboard-fieldtooltipitem-visibility>
                              visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldTooltipItemProperty ::
  Value Prelude.Text -> FieldTooltipItemProperty
mkFieldTooltipItemProperty fieldId
  = FieldTooltipItemProperty
      {haddock_workaround_ = (), fieldId = fieldId,
       label = Prelude.Nothing, tooltipTarget = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties FieldTooltipItemProperty where
  toResourceProperties FieldTooltipItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FieldTooltipItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "Label" Prelude.<$> label,
                               (JSON..=) "TooltipTarget" Prelude.<$> tooltipTarget,
                               (JSON..=) "Visibility" Prelude.<$> visibility]))}
instance JSON.ToJSON FieldTooltipItemProperty where
  toJSON FieldTooltipItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "Label" Prelude.<$> label,
                  (JSON..=) "TooltipTarget" Prelude.<$> tooltipTarget,
                  (JSON..=) "Visibility" Prelude.<$> visibility])))
instance Property "FieldId" FieldTooltipItemProperty where
  type PropertyType "FieldId" FieldTooltipItemProperty = Value Prelude.Text
  set newValue FieldTooltipItemProperty {..}
    = FieldTooltipItemProperty {fieldId = newValue, ..}
instance Property "Label" FieldTooltipItemProperty where
  type PropertyType "Label" FieldTooltipItemProperty = Value Prelude.Text
  set newValue FieldTooltipItemProperty {..}
    = FieldTooltipItemProperty {label = Prelude.pure newValue, ..}
instance Property "TooltipTarget" FieldTooltipItemProperty where
  type PropertyType "TooltipTarget" FieldTooltipItemProperty = Value Prelude.Text
  set newValue FieldTooltipItemProperty {..}
    = FieldTooltipItemProperty
        {tooltipTarget = Prelude.pure newValue, ..}
instance Property "Visibility" FieldTooltipItemProperty where
  type PropertyType "Visibility" FieldTooltipItemProperty = Value Prelude.Text
  set newValue FieldTooltipItemProperty {..}
    = FieldTooltipItemProperty {visibility = Prelude.pure newValue, ..}