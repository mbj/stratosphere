module Stratosphere.EMRServerless.Application.LogTypeMapKeyValuePairProperty (
        LogTypeMapKeyValuePairProperty(..),
        mkLogTypeMapKeyValuePairProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogTypeMapKeyValuePairProperty
  = LogTypeMapKeyValuePairProperty {key :: (Value Prelude.Text),
                                    value :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogTypeMapKeyValuePairProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> LogTypeMapKeyValuePairProperty
mkLogTypeMapKeyValuePairProperty key value
  = LogTypeMapKeyValuePairProperty {key = key, value = value}
instance ToResourceProperties LogTypeMapKeyValuePairProperty where
  toResourceProperties LogTypeMapKeyValuePairProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.LogTypeMapKeyValuePair",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON LogTypeMapKeyValuePairProperty where
  toJSON LogTypeMapKeyValuePairProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" LogTypeMapKeyValuePairProperty where
  type PropertyType "Key" LogTypeMapKeyValuePairProperty = Value Prelude.Text
  set newValue LogTypeMapKeyValuePairProperty {..}
    = LogTypeMapKeyValuePairProperty {key = newValue, ..}
instance Property "Value" LogTypeMapKeyValuePairProperty where
  type PropertyType "Value" LogTypeMapKeyValuePairProperty = ValueList Prelude.Text
  set newValue LogTypeMapKeyValuePairProperty {..}
    = LogTypeMapKeyValuePairProperty {value = newValue, ..}