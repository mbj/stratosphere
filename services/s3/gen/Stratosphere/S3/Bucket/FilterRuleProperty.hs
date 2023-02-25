module Stratosphere.S3.Bucket.FilterRuleProperty (
        FilterRuleProperty(..), mkFilterRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterRuleProperty
  = FilterRuleProperty {name :: (Value Prelude.Text),
                        value :: (Value Prelude.Text)}
mkFilterRuleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FilterRuleProperty
mkFilterRuleProperty name value
  = FilterRuleProperty {name = name, value = value}
instance ToResourceProperties FilterRuleProperty where
  toResourceProperties FilterRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.FilterRule",
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON FilterRuleProperty where
  toJSON FilterRuleProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" FilterRuleProperty where
  type PropertyType "Name" FilterRuleProperty = Value Prelude.Text
  set newValue FilterRuleProperty {..}
    = FilterRuleProperty {name = newValue, ..}
instance Property "Value" FilterRuleProperty where
  type PropertyType "Value" FilterRuleProperty = Value Prelude.Text
  set newValue FilterRuleProperty {..}
    = FilterRuleProperty {value = newValue, ..}