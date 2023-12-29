module Stratosphere.QuickSight.Dashboard.TooltipOptionsProperty (
        module Exports, TooltipOptionsProperty(..),
        mkTooltipOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldBasedTooltipProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TooltipOptionsProperty
  = TooltipOptionsProperty {fieldBasedTooltip :: (Prelude.Maybe FieldBasedTooltipProperty),
                            selectedTooltipType :: (Prelude.Maybe (Value Prelude.Text)),
                            tooltipVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTooltipOptionsProperty :: TooltipOptionsProperty
mkTooltipOptionsProperty
  = TooltipOptionsProperty
      {fieldBasedTooltip = Prelude.Nothing,
       selectedTooltipType = Prelude.Nothing,
       tooltipVisibility = Prelude.Nothing}
instance ToResourceProperties TooltipOptionsProperty where
  toResourceProperties TooltipOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TooltipOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldBasedTooltip" Prelude.<$> fieldBasedTooltip,
                            (JSON..=) "SelectedTooltipType" Prelude.<$> selectedTooltipType,
                            (JSON..=) "TooltipVisibility" Prelude.<$> tooltipVisibility])}
instance JSON.ToJSON TooltipOptionsProperty where
  toJSON TooltipOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldBasedTooltip" Prelude.<$> fieldBasedTooltip,
               (JSON..=) "SelectedTooltipType" Prelude.<$> selectedTooltipType,
               (JSON..=) "TooltipVisibility" Prelude.<$> tooltipVisibility]))
instance Property "FieldBasedTooltip" TooltipOptionsProperty where
  type PropertyType "FieldBasedTooltip" TooltipOptionsProperty = FieldBasedTooltipProperty
  set newValue TooltipOptionsProperty {..}
    = TooltipOptionsProperty
        {fieldBasedTooltip = Prelude.pure newValue, ..}
instance Property "SelectedTooltipType" TooltipOptionsProperty where
  type PropertyType "SelectedTooltipType" TooltipOptionsProperty = Value Prelude.Text
  set newValue TooltipOptionsProperty {..}
    = TooltipOptionsProperty
        {selectedTooltipType = Prelude.pure newValue, ..}
instance Property "TooltipVisibility" TooltipOptionsProperty where
  type PropertyType "TooltipVisibility" TooltipOptionsProperty = Value Prelude.Text
  set newValue TooltipOptionsProperty {..}
    = TooltipOptionsProperty
        {tooltipVisibility = Prelude.pure newValue, ..}