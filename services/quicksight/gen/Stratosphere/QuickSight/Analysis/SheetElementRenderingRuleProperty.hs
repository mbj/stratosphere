module Stratosphere.QuickSight.Analysis.SheetElementRenderingRuleProperty (
        module Exports, SheetElementRenderingRuleProperty(..),
        mkSheetElementRenderingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetElementConfigurationOverridesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetElementRenderingRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetelementrenderingrule.html>
    SheetElementRenderingRuleProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetelementrenderingrule.html#cfn-quicksight-analysis-sheetelementrenderingrule-configurationoverrides>
                                       configurationOverrides :: SheetElementConfigurationOverridesProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetelementrenderingrule.html#cfn-quicksight-analysis-sheetelementrenderingrule-expression>
                                       expression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetElementRenderingRuleProperty ::
  SheetElementConfigurationOverridesProperty
  -> Value Prelude.Text -> SheetElementRenderingRuleProperty
mkSheetElementRenderingRuleProperty
  configurationOverrides
  expression
  = SheetElementRenderingRuleProperty
      {haddock_workaround_ = (),
       configurationOverrides = configurationOverrides,
       expression = expression}
instance ToResourceProperties SheetElementRenderingRuleProperty where
  toResourceProperties SheetElementRenderingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SheetElementRenderingRule",
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