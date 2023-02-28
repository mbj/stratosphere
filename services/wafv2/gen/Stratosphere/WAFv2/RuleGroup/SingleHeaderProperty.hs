module Stratosphere.WAFv2.RuleGroup.SingleHeaderProperty (
        SingleHeaderProperty(..), mkSingleHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleHeaderProperty
  = SingleHeaderProperty {name :: (Value Prelude.Text)}
mkSingleHeaderProperty ::
  Value Prelude.Text -> SingleHeaderProperty
mkSingleHeaderProperty name = SingleHeaderProperty {name = name}
instance ToResourceProperties SingleHeaderProperty where
  toResourceProperties SingleHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.SingleHeader",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON SingleHeaderProperty where
  toJSON SingleHeaderProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" SingleHeaderProperty where
  type PropertyType "Name" SingleHeaderProperty = Value Prelude.Text
  set newValue SingleHeaderProperty {}
    = SingleHeaderProperty {name = newValue, ..}