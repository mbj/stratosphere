module Stratosphere.QuickSight.Analysis.FilledMapConditionalFormattingProperty (
        module Exports, FilledMapConditionalFormattingProperty(..),
        mkFilledMapConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilledMapConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapConditionalFormattingProperty
  = FilledMapConditionalFormattingProperty {conditionalFormattingOptions :: [FilledMapConditionalFormattingOptionProperty]}
mkFilledMapConditionalFormattingProperty ::
  [FilledMapConditionalFormattingOptionProperty]
  -> FilledMapConditionalFormattingProperty
mkFilledMapConditionalFormattingProperty
  conditionalFormattingOptions
  = FilledMapConditionalFormattingProperty
      {conditionalFormattingOptions = conditionalFormattingOptions}
instance ToResourceProperties FilledMapConditionalFormattingProperty where
  toResourceProperties FilledMapConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilledMapConditionalFormatting",
         supportsTags = Prelude.False,
         properties = ["ConditionalFormattingOptions"
                         JSON..= conditionalFormattingOptions]}
instance JSON.ToJSON FilledMapConditionalFormattingProperty where
  toJSON FilledMapConditionalFormattingProperty {..}
    = JSON.object
        ["ConditionalFormattingOptions"
           JSON..= conditionalFormattingOptions]
instance Property "ConditionalFormattingOptions" FilledMapConditionalFormattingProperty where
  type PropertyType "ConditionalFormattingOptions" FilledMapConditionalFormattingProperty = [FilledMapConditionalFormattingOptionProperty]
  set newValue FilledMapConditionalFormattingProperty {}
    = FilledMapConditionalFormattingProperty
        {conditionalFormattingOptions = newValue, ..}