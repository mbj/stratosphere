module Stratosphere.CloudFront.ResponseHeadersPolicy.CustomHeaderProperty (
        CustomHeaderProperty(..), mkCustomHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomHeaderProperty
  = CustomHeaderProperty {header :: (Value Prelude.Text),
                          override :: (Value Prelude.Bool),
                          value :: (Value Prelude.Text)}
mkCustomHeaderProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> Value Prelude.Text -> CustomHeaderProperty
mkCustomHeaderProperty header override value
  = CustomHeaderProperty
      {header = header, override = override, value = value}
instance ToResourceProperties CustomHeaderProperty where
  toResourceProperties CustomHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.CustomHeader",
         supportsTags = Prelude.False,
         properties = ["Header" JSON..= header, "Override" JSON..= override,
                       "Value" JSON..= value]}
instance JSON.ToJSON CustomHeaderProperty where
  toJSON CustomHeaderProperty {..}
    = JSON.object
        ["Header" JSON..= header, "Override" JSON..= override,
         "Value" JSON..= value]
instance Property "Header" CustomHeaderProperty where
  type PropertyType "Header" CustomHeaderProperty = Value Prelude.Text
  set newValue CustomHeaderProperty {..}
    = CustomHeaderProperty {header = newValue, ..}
instance Property "Override" CustomHeaderProperty where
  type PropertyType "Override" CustomHeaderProperty = Value Prelude.Bool
  set newValue CustomHeaderProperty {..}
    = CustomHeaderProperty {override = newValue, ..}
instance Property "Value" CustomHeaderProperty where
  type PropertyType "Value" CustomHeaderProperty = Value Prelude.Text
  set newValue CustomHeaderProperty {..}
    = CustomHeaderProperty {value = newValue, ..}