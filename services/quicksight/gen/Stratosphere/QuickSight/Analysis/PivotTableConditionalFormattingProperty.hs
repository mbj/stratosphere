module Stratosphere.QuickSight.Analysis.PivotTableConditionalFormattingProperty (
        module Exports, PivotTableConditionalFormattingProperty(..),
        mkPivotTableConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PivotTableConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableConditionalFormattingProperty
  = PivotTableConditionalFormattingProperty {conditionalFormattingOptions :: (Prelude.Maybe [PivotTableConditionalFormattingOptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableConditionalFormattingProperty ::
  PivotTableConditionalFormattingProperty
mkPivotTableConditionalFormattingProperty
  = PivotTableConditionalFormattingProperty
      {conditionalFormattingOptions = Prelude.Nothing}
instance ToResourceProperties PivotTableConditionalFormattingProperty where
  toResourceProperties PivotTableConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PivotTableConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionalFormattingOptions"
                              Prelude.<$> conditionalFormattingOptions])}
instance JSON.ToJSON PivotTableConditionalFormattingProperty where
  toJSON PivotTableConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionalFormattingOptions"
                 Prelude.<$> conditionalFormattingOptions]))
instance Property "ConditionalFormattingOptions" PivotTableConditionalFormattingProperty where
  type PropertyType "ConditionalFormattingOptions" PivotTableConditionalFormattingProperty = [PivotTableConditionalFormattingOptionProperty]
  set newValue PivotTableConditionalFormattingProperty {}
    = PivotTableConditionalFormattingProperty
        {conditionalFormattingOptions = Prelude.pure newValue, ..}