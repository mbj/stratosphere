module Stratosphere.QuickSight.Template.ConditionalFormattingGradientColorProperty (
        module Exports, ConditionalFormattingGradientColorProperty(..),
        mkConditionalFormattingGradientColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GradientColorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionalFormattingGradientColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-conditionalformattinggradientcolor.html>
    ConditionalFormattingGradientColorProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-conditionalformattinggradientcolor.html#cfn-quicksight-template-conditionalformattinggradientcolor-color>
                                                color :: GradientColorProperty,
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-conditionalformattinggradientcolor.html#cfn-quicksight-template-conditionalformattinggradientcolor-expression>
                                                expression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionalFormattingGradientColorProperty ::
  GradientColorProperty
  -> Value Prelude.Text -> ConditionalFormattingGradientColorProperty
mkConditionalFormattingGradientColorProperty color expression
  = ConditionalFormattingGradientColorProperty
      {haddock_workaround_ = (), color = color, expression = expression}
instance ToResourceProperties ConditionalFormattingGradientColorProperty where
  toResourceProperties
    ConditionalFormattingGradientColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ConditionalFormattingGradientColor",
         supportsTags = Prelude.False,
         properties = ["Color" JSON..= color,
                       "Expression" JSON..= expression]}
instance JSON.ToJSON ConditionalFormattingGradientColorProperty where
  toJSON ConditionalFormattingGradientColorProperty {..}
    = JSON.object
        ["Color" JSON..= color, "Expression" JSON..= expression]
instance Property "Color" ConditionalFormattingGradientColorProperty where
  type PropertyType "Color" ConditionalFormattingGradientColorProperty = GradientColorProperty
  set newValue ConditionalFormattingGradientColorProperty {..}
    = ConditionalFormattingGradientColorProperty {color = newValue, ..}
instance Property "Expression" ConditionalFormattingGradientColorProperty where
  type PropertyType "Expression" ConditionalFormattingGradientColorProperty = Value Prelude.Text
  set newValue ConditionalFormattingGradientColorProperty {..}
    = ConditionalFormattingGradientColorProperty
        {expression = newValue, ..}