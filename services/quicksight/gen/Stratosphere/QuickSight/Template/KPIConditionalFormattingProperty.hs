module Stratosphere.QuickSight.Template.KPIConditionalFormattingProperty (
        module Exports, KPIConditionalFormattingProperty(..),
        mkKPIConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.KPIConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data KPIConditionalFormattingProperty
  = KPIConditionalFormattingProperty {conditionalFormattingOptions :: (Prelude.Maybe [KPIConditionalFormattingOptionProperty])}
mkKPIConditionalFormattingProperty ::
  KPIConditionalFormattingProperty
mkKPIConditionalFormattingProperty
  = KPIConditionalFormattingProperty
      {conditionalFormattingOptions = Prelude.Nothing}
instance ToResourceProperties KPIConditionalFormattingProperty where
  toResourceProperties KPIConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.KPIConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionalFormattingOptions"
                              Prelude.<$> conditionalFormattingOptions])}
instance JSON.ToJSON KPIConditionalFormattingProperty where
  toJSON KPIConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionalFormattingOptions"
                 Prelude.<$> conditionalFormattingOptions]))
instance Property "ConditionalFormattingOptions" KPIConditionalFormattingProperty where
  type PropertyType "ConditionalFormattingOptions" KPIConditionalFormattingProperty = [KPIConditionalFormattingOptionProperty]
  set newValue KPIConditionalFormattingProperty {}
    = KPIConditionalFormattingProperty
        {conditionalFormattingOptions = Prelude.pure newValue, ..}