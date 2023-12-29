module Stratosphere.QuickSight.Dashboard.FieldBasedTooltipProperty (
        module Exports, FieldBasedTooltipProperty(..),
        mkFieldBasedTooltipProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TooltipItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldBasedTooltipProperty
  = FieldBasedTooltipProperty {aggregationVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                               tooltipFields :: (Prelude.Maybe [TooltipItemProperty]),
                               tooltipTitleType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldBasedTooltipProperty :: FieldBasedTooltipProperty
mkFieldBasedTooltipProperty
  = FieldBasedTooltipProperty
      {aggregationVisibility = Prelude.Nothing,
       tooltipFields = Prelude.Nothing,
       tooltipTitleType = Prelude.Nothing}
instance ToResourceProperties FieldBasedTooltipProperty where
  toResourceProperties FieldBasedTooltipProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FieldBasedTooltip",
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
  type PropertyType "AggregationVisibility" FieldBasedTooltipProperty = Value Prelude.Text
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