module Stratosphere.WAFv2.RuleGroup.CustomHTTPHeaderProperty (
        CustomHTTPHeaderProperty(..), mkCustomHTTPHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomHTTPHeaderProperty
  = CustomHTTPHeaderProperty {name :: (Value Prelude.Text),
                              value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomHTTPHeaderProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomHTTPHeaderProperty
mkCustomHTTPHeaderProperty name value
  = CustomHTTPHeaderProperty {name = name, value = value}
instance ToResourceProperties CustomHTTPHeaderProperty where
  toResourceProperties CustomHTTPHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.CustomHTTPHeader",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON CustomHTTPHeaderProperty where
  toJSON CustomHTTPHeaderProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" CustomHTTPHeaderProperty where
  type PropertyType "Name" CustomHTTPHeaderProperty = Value Prelude.Text
  set newValue CustomHTTPHeaderProperty {..}
    = CustomHTTPHeaderProperty {name = newValue, ..}
instance Property "Value" CustomHTTPHeaderProperty where
  type PropertyType "Value" CustomHTTPHeaderProperty = Value Prelude.Text
  set newValue CustomHTTPHeaderProperty {..}
    = CustomHTTPHeaderProperty {value = newValue, ..}