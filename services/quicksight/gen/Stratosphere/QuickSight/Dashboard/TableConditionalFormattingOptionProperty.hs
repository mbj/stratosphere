module Stratosphere.QuickSight.Dashboard.TableConditionalFormattingOptionProperty (
        module Exports, TableConditionalFormattingOptionProperty(..),
        mkTableConditionalFormattingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableCellConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableRowConditionalFormattingProperty as Exports
import Stratosphere.ResourceProperties
data TableConditionalFormattingOptionProperty
  = TableConditionalFormattingOptionProperty {cell :: (Prelude.Maybe TableCellConditionalFormattingProperty),
                                              row :: (Prelude.Maybe TableRowConditionalFormattingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableConditionalFormattingOptionProperty ::
  TableConditionalFormattingOptionProperty
mkTableConditionalFormattingOptionProperty
  = TableConditionalFormattingOptionProperty
      {cell = Prelude.Nothing, row = Prelude.Nothing}
instance ToResourceProperties TableConditionalFormattingOptionProperty where
  toResourceProperties TableConditionalFormattingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableConditionalFormattingOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cell" Prelude.<$> cell,
                            (JSON..=) "Row" Prelude.<$> row])}
instance JSON.ToJSON TableConditionalFormattingOptionProperty where
  toJSON TableConditionalFormattingOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cell" Prelude.<$> cell,
               (JSON..=) "Row" Prelude.<$> row]))
instance Property "Cell" TableConditionalFormattingOptionProperty where
  type PropertyType "Cell" TableConditionalFormattingOptionProperty = TableCellConditionalFormattingProperty
  set newValue TableConditionalFormattingOptionProperty {..}
    = TableConditionalFormattingOptionProperty
        {cell = Prelude.pure newValue, ..}
instance Property "Row" TableConditionalFormattingOptionProperty where
  type PropertyType "Row" TableConditionalFormattingOptionProperty = TableRowConditionalFormattingProperty
  set newValue TableConditionalFormattingOptionProperty {..}
    = TableConditionalFormattingOptionProperty
        {row = Prelude.pure newValue, ..}