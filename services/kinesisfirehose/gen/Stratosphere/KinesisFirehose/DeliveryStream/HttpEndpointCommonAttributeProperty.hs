module Stratosphere.KinesisFirehose.DeliveryStream.HttpEndpointCommonAttributeProperty (
        HttpEndpointCommonAttributeProperty(..),
        mkHttpEndpointCommonAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpEndpointCommonAttributeProperty
  = HttpEndpointCommonAttributeProperty {attributeName :: (Value Prelude.Text),
                                         attributeValue :: (Value Prelude.Text)}
mkHttpEndpointCommonAttributeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> HttpEndpointCommonAttributeProperty
mkHttpEndpointCommonAttributeProperty attributeName attributeValue
  = HttpEndpointCommonAttributeProperty
      {attributeName = attributeName, attributeValue = attributeValue}
instance ToResourceProperties HttpEndpointCommonAttributeProperty where
  toResourceProperties HttpEndpointCommonAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.HttpEndpointCommonAttribute",
         properties = ["AttributeName" JSON..= attributeName,
                       "AttributeValue" JSON..= attributeValue]}
instance JSON.ToJSON HttpEndpointCommonAttributeProperty where
  toJSON HttpEndpointCommonAttributeProperty {..}
    = JSON.object
        ["AttributeName" JSON..= attributeName,
         "AttributeValue" JSON..= attributeValue]
instance Property "AttributeName" HttpEndpointCommonAttributeProperty where
  type PropertyType "AttributeName" HttpEndpointCommonAttributeProperty = Value Prelude.Text
  set newValue HttpEndpointCommonAttributeProperty {..}
    = HttpEndpointCommonAttributeProperty
        {attributeName = newValue, ..}
instance Property "AttributeValue" HttpEndpointCommonAttributeProperty where
  type PropertyType "AttributeValue" HttpEndpointCommonAttributeProperty = Value Prelude.Text
  set newValue HttpEndpointCommonAttributeProperty {..}
    = HttpEndpointCommonAttributeProperty
        {attributeValue = newValue, ..}