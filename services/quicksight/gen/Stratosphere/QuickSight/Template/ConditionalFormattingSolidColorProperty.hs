module Stratosphere.QuickSight.Template.ConditionalFormattingSolidColorProperty (
        ConditionalFormattingSolidColorProperty(..),
        mkConditionalFormattingSolidColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionalFormattingSolidColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-conditionalformattingsolidcolor.html>
    ConditionalFormattingSolidColorProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-conditionalformattingsolidcolor.html#cfn-quicksight-template-conditionalformattingsolidcolor-color>
                                             color :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-conditionalformattingsolidcolor.html#cfn-quicksight-template-conditionalformattingsolidcolor-expression>
                                             expression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionalFormattingSolidColorProperty ::
  Value Prelude.Text -> ConditionalFormattingSolidColorProperty
mkConditionalFormattingSolidColorProperty expression
  = ConditionalFormattingSolidColorProperty
      {haddock_workaround_ = (), expression = expression,
       color = Prelude.Nothing}
instance ToResourceProperties ConditionalFormattingSolidColorProperty where
  toResourceProperties ConditionalFormattingSolidColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ConditionalFormattingSolidColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression]
                           (Prelude.catMaybes [(JSON..=) "Color" Prelude.<$> color]))}
instance JSON.ToJSON ConditionalFormattingSolidColorProperty where
  toJSON ConditionalFormattingSolidColorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression]
              (Prelude.catMaybes [(JSON..=) "Color" Prelude.<$> color])))
instance Property "Color" ConditionalFormattingSolidColorProperty where
  type PropertyType "Color" ConditionalFormattingSolidColorProperty = Value Prelude.Text
  set newValue ConditionalFormattingSolidColorProperty {..}
    = ConditionalFormattingSolidColorProperty
        {color = Prelude.pure newValue, ..}
instance Property "Expression" ConditionalFormattingSolidColorProperty where
  type PropertyType "Expression" ConditionalFormattingSolidColorProperty = Value Prelude.Text
  set newValue ConditionalFormattingSolidColorProperty {..}
    = ConditionalFormattingSolidColorProperty
        {expression = newValue, ..}