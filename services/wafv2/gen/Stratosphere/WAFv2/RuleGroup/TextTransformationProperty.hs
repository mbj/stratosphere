module Stratosphere.WAFv2.RuleGroup.TextTransformationProperty (
        TextTransformationProperty(..), mkTextTransformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextTransformationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html>
    TextTransformationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html#cfn-wafv2-rulegroup-texttransformation-priority>
                                priority :: (Value Prelude.Integer),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html#cfn-wafv2-rulegroup-texttransformation-type>
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextTransformationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> TextTransformationProperty
mkTextTransformationProperty priority type'
  = TextTransformationProperty {priority = priority, type' = type'}
instance ToResourceProperties TextTransformationProperty where
  toResourceProperties TextTransformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.TextTransformation",
         supportsTags = Prelude.False,
         properties = ["Priority" JSON..= priority, "Type" JSON..= type']}
instance JSON.ToJSON TextTransformationProperty where
  toJSON TextTransformationProperty {..}
    = JSON.object ["Priority" JSON..= priority, "Type" JSON..= type']
instance Property "Priority" TextTransformationProperty where
  type PropertyType "Priority" TextTransformationProperty = Value Prelude.Integer
  set newValue TextTransformationProperty {..}
    = TextTransformationProperty {priority = newValue, ..}
instance Property "Type" TextTransformationProperty where
  type PropertyType "Type" TextTransformationProperty = Value Prelude.Text
  set newValue TextTransformationProperty {..}
    = TextTransformationProperty {type' = newValue, ..}