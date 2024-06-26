module Stratosphere.QuickSight.Dashboard.KPIConditionalFormattingProperty (
        module Exports, KPIConditionalFormattingProperty(..),
        mkKPIConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPIConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data KPIConditionalFormattingProperty
  = KPIConditionalFormattingProperty {conditionalFormattingOptions :: (Prelude.Maybe [KPIConditionalFormattingOptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIConditionalFormattingProperty ::
  KPIConditionalFormattingProperty
mkKPIConditionalFormattingProperty
  = KPIConditionalFormattingProperty
      {conditionalFormattingOptions = Prelude.Nothing}
instance ToResourceProperties KPIConditionalFormattingProperty where
  toResourceProperties KPIConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.KPIConditionalFormatting",
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