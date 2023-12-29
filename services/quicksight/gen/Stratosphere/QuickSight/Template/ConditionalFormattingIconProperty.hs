module Stratosphere.QuickSight.Template.ConditionalFormattingIconProperty (
        module Exports, ConditionalFormattingIconProperty(..),
        mkConditionalFormattingIconProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ConditionalFormattingCustomIconConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ConditionalFormattingIconSetProperty as Exports
import Stratosphere.ResourceProperties
data ConditionalFormattingIconProperty
  = ConditionalFormattingIconProperty {customCondition :: (Prelude.Maybe ConditionalFormattingCustomIconConditionProperty),
                                       iconSet :: (Prelude.Maybe ConditionalFormattingIconSetProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionalFormattingIconProperty ::
  ConditionalFormattingIconProperty
mkConditionalFormattingIconProperty
  = ConditionalFormattingIconProperty
      {customCondition = Prelude.Nothing, iconSet = Prelude.Nothing}
instance ToResourceProperties ConditionalFormattingIconProperty where
  toResourceProperties ConditionalFormattingIconProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ConditionalFormattingIcon",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomCondition" Prelude.<$> customCondition,
                            (JSON..=) "IconSet" Prelude.<$> iconSet])}
instance JSON.ToJSON ConditionalFormattingIconProperty where
  toJSON ConditionalFormattingIconProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomCondition" Prelude.<$> customCondition,
               (JSON..=) "IconSet" Prelude.<$> iconSet]))
instance Property "CustomCondition" ConditionalFormattingIconProperty where
  type PropertyType "CustomCondition" ConditionalFormattingIconProperty = ConditionalFormattingCustomIconConditionProperty
  set newValue ConditionalFormattingIconProperty {..}
    = ConditionalFormattingIconProperty
        {customCondition = Prelude.pure newValue, ..}
instance Property "IconSet" ConditionalFormattingIconProperty where
  type PropertyType "IconSet" ConditionalFormattingIconProperty = ConditionalFormattingIconSetProperty
  set newValue ConditionalFormattingIconProperty {..}
    = ConditionalFormattingIconProperty
        {iconSet = Prelude.pure newValue, ..}