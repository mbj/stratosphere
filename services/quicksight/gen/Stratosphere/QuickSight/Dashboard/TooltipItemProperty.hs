module Stratosphere.QuickSight.Dashboard.TooltipItemProperty (
        module Exports, TooltipItemProperty(..), mkTooltipItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnTooltipItemProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldTooltipItemProperty as Exports
import Stratosphere.ResourceProperties
data TooltipItemProperty
  = TooltipItemProperty {columnTooltipItem :: (Prelude.Maybe ColumnTooltipItemProperty),
                         fieldTooltipItem :: (Prelude.Maybe FieldTooltipItemProperty)}
mkTooltipItemProperty :: TooltipItemProperty
mkTooltipItemProperty
  = TooltipItemProperty
      {columnTooltipItem = Prelude.Nothing,
       fieldTooltipItem = Prelude.Nothing}
instance ToResourceProperties TooltipItemProperty where
  toResourceProperties TooltipItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TooltipItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnTooltipItem" Prelude.<$> columnTooltipItem,
                            (JSON..=) "FieldTooltipItem" Prelude.<$> fieldTooltipItem])}
instance JSON.ToJSON TooltipItemProperty where
  toJSON TooltipItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnTooltipItem" Prelude.<$> columnTooltipItem,
               (JSON..=) "FieldTooltipItem" Prelude.<$> fieldTooltipItem]))
instance Property "ColumnTooltipItem" TooltipItemProperty where
  type PropertyType "ColumnTooltipItem" TooltipItemProperty = ColumnTooltipItemProperty
  set newValue TooltipItemProperty {..}
    = TooltipItemProperty
        {columnTooltipItem = Prelude.pure newValue, ..}
instance Property "FieldTooltipItem" TooltipItemProperty where
  type PropertyType "FieldTooltipItem" TooltipItemProperty = FieldTooltipItemProperty
  set newValue TooltipItemProperty {..}
    = TooltipItemProperty
        {fieldTooltipItem = Prelude.pure newValue, ..}