module Stratosphere.QuickSight.Template.SheetElementRenderingRuleProperty (
        module Exports, SheetElementRenderingRuleProperty(..),
        mkSheetElementRenderingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetElementConfigurationOverridesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetElementRenderingRuleProperty
  = SheetElementRenderingRuleProperty {configurationOverrides :: SheetElementConfigurationOverridesProperty,
                                       expression :: (Value Prelude.Text)}
mkSheetElementRenderingRuleProperty ::
  SheetElementConfigurationOverridesProperty
  -> Value Prelude.Text -> SheetElementRenderingRuleProperty
mkSheetElementRenderingRuleProperty
  configurationOverrides
  expression
  = SheetElementRenderingRuleProperty
      {configurationOverrides = configurationOverrides,
       expression = expression}
instance ToResourceProperties SheetElementRenderingRuleProperty where
  toResourceProperties SheetElementRenderingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SheetElementRenderingRule",
         supportsTags = Prelude.False,
         properties = ["ConfigurationOverrides"
                         JSON..= configurationOverrides,
                       "Expression" JSON..= expression]}
instance JSON.ToJSON SheetElementRenderingRuleProperty where
  toJSON SheetElementRenderingRuleProperty {..}
    = JSON.object
        ["ConfigurationOverrides" JSON..= configurationOverrides,
         "Expression" JSON..= expression]
instance Property "ConfigurationOverrides" SheetElementRenderingRuleProperty where
  type PropertyType "ConfigurationOverrides" SheetElementRenderingRuleProperty = SheetElementConfigurationOverridesProperty
  set newValue SheetElementRenderingRuleProperty {..}
    = SheetElementRenderingRuleProperty
        {configurationOverrides = newValue, ..}
instance Property "Expression" SheetElementRenderingRuleProperty where
  type PropertyType "Expression" SheetElementRenderingRuleProperty = Value Prelude.Text
  set newValue SheetElementRenderingRuleProperty {..}
    = SheetElementRenderingRuleProperty {expression = newValue, ..}