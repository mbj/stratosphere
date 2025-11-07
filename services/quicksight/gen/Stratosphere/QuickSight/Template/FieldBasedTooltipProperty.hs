module Stratosphere.QuickSight.Template.FieldBasedTooltipProperty (
        module Exports, FieldBasedTooltipProperty(..),
        mkFieldBasedTooltipProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TooltipItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldBasedTooltipProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fieldbasedtooltip.html>
    FieldBasedTooltipProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fieldbasedtooltip.html#cfn-quicksight-template-fieldbasedtooltip-aggregationvisibility>
                               aggregationVisibility :: (Prelude.Maybe JSON.Object),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fieldbasedtooltip.html#cfn-quicksight-template-fieldbasedtooltip-tooltipfields>
                               tooltipFields :: (Prelude.Maybe [TooltipItemProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fieldbasedtooltip.html#cfn-quicksight-template-fieldbasedtooltip-tooltiptitletype>
                               tooltipTitleType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldBasedTooltipProperty :: FieldBasedTooltipProperty
mkFieldBasedTooltipProperty
  = FieldBasedTooltipProperty
      {haddock_workaround_ = (), aggregationVisibility = Prelude.Nothing,
       tooltipFields = Prelude.Nothing,
       tooltipTitleType = Prelude.Nothing}
instance ToResourceProperties FieldBasedTooltipProperty where
  toResourceProperties FieldBasedTooltipProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FieldBasedTooltip",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AggregationVisibility"
                              Prelude.<$> aggregationVisibility,
                            (JSON..=) "TooltipFields" Prelude.<$> tooltipFields,
                            (JSON..=) "TooltipTitleType" Prelude.<$> tooltipTitleType])}
instance JSON.ToJSON FieldBasedTooltipProperty where
  toJSON FieldBasedTooltipProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AggregationVisibility"
                 Prelude.<$> aggregationVisibility,
               (JSON..=) "TooltipFields" Prelude.<$> tooltipFields,
               (JSON..=) "TooltipTitleType" Prelude.<$> tooltipTitleType]))
instance Property "AggregationVisibility" FieldBasedTooltipProperty where
  type PropertyType "AggregationVisibility" FieldBasedTooltipProperty = JSON.Object
  set newValue FieldBasedTooltipProperty {..}
    = FieldBasedTooltipProperty
        {aggregationVisibility = Prelude.pure newValue, ..}
instance Property "TooltipFields" FieldBasedTooltipProperty where
  type PropertyType "TooltipFields" FieldBasedTooltipProperty = [TooltipItemProperty]
  set newValue FieldBasedTooltipProperty {..}
    = FieldBasedTooltipProperty
        {tooltipFields = Prelude.pure newValue, ..}
instance Property "TooltipTitleType" FieldBasedTooltipProperty where
  type PropertyType "TooltipTitleType" FieldBasedTooltipProperty = Value Prelude.Text
  set newValue FieldBasedTooltipProperty {..}
    = FieldBasedTooltipProperty
        {tooltipTitleType = Prelude.pure newValue, ..}