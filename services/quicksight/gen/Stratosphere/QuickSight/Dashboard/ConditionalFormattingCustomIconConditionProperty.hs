module Stratosphere.QuickSight.Dashboard.ConditionalFormattingCustomIconConditionProperty (
        module Exports,
        ConditionalFormattingCustomIconConditionProperty(..),
        mkConditionalFormattingCustomIconConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ConditionalFormattingCustomIconOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ConditionalFormattingIconDisplayConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionalFormattingCustomIconConditionProperty
  = ConditionalFormattingCustomIconConditionProperty {color :: (Prelude.Maybe (Value Prelude.Text)),
                                                      displayConfiguration :: (Prelude.Maybe ConditionalFormattingIconDisplayConfigurationProperty),
                                                      expression :: (Value Prelude.Text),
                                                      iconOptions :: ConditionalFormattingCustomIconOptionsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionalFormattingCustomIconConditionProperty ::
  Value Prelude.Text
  -> ConditionalFormattingCustomIconOptionsProperty
     -> ConditionalFormattingCustomIconConditionProperty
mkConditionalFormattingCustomIconConditionProperty
  expression
  iconOptions
  = ConditionalFormattingCustomIconConditionProperty
      {expression = expression, iconOptions = iconOptions,
       color = Prelude.Nothing, displayConfiguration = Prelude.Nothing}
instance ToResourceProperties ConditionalFormattingCustomIconConditionProperty where
  toResourceProperties
    ConditionalFormattingCustomIconConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ConditionalFormattingCustomIconCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression,
                            "IconOptions" JSON..= iconOptions]
                           (Prelude.catMaybes
                              [(JSON..=) "Color" Prelude.<$> color,
                               (JSON..=) "DisplayConfiguration"
                                 Prelude.<$> displayConfiguration]))}
instance JSON.ToJSON ConditionalFormattingCustomIconConditionProperty where
  toJSON ConditionalFormattingCustomIconConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression,
               "IconOptions" JSON..= iconOptions]
              (Prelude.catMaybes
                 [(JSON..=) "Color" Prelude.<$> color,
                  (JSON..=) "DisplayConfiguration"
                    Prelude.<$> displayConfiguration])))
instance Property "Color" ConditionalFormattingCustomIconConditionProperty where
  type PropertyType "Color" ConditionalFormattingCustomIconConditionProperty = Value Prelude.Text
  set newValue ConditionalFormattingCustomIconConditionProperty {..}
    = ConditionalFormattingCustomIconConditionProperty
        {color = Prelude.pure newValue, ..}
instance Property "DisplayConfiguration" ConditionalFormattingCustomIconConditionProperty where
  type PropertyType "DisplayConfiguration" ConditionalFormattingCustomIconConditionProperty = ConditionalFormattingIconDisplayConfigurationProperty
  set newValue ConditionalFormattingCustomIconConditionProperty {..}
    = ConditionalFormattingCustomIconConditionProperty
        {displayConfiguration = Prelude.pure newValue, ..}
instance Property "Expression" ConditionalFormattingCustomIconConditionProperty where
  type PropertyType "Expression" ConditionalFormattingCustomIconConditionProperty = Value Prelude.Text
  set newValue ConditionalFormattingCustomIconConditionProperty {..}
    = ConditionalFormattingCustomIconConditionProperty
        {expression = newValue, ..}
instance Property "IconOptions" ConditionalFormattingCustomIconConditionProperty where
  type PropertyType "IconOptions" ConditionalFormattingCustomIconConditionProperty = ConditionalFormattingCustomIconOptionsProperty
  set newValue ConditionalFormattingCustomIconConditionProperty {..}
    = ConditionalFormattingCustomIconConditionProperty
        {iconOptions = newValue, ..}