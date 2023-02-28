module Stratosphere.WAFv2.WebACL.TextTransformationProperty (
        TextTransformationProperty(..), mkTextTransformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextTransformationProperty
  = TextTransformationProperty {priority :: (Value Prelude.Integer),
                                type' :: (Value Prelude.Text)}
mkTextTransformationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> TextTransformationProperty
mkTextTransformationProperty priority type'
  = TextTransformationProperty {priority = priority, type' = type'}
instance ToResourceProperties TextTransformationProperty where
  toResourceProperties TextTransformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.TextTransformation",
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