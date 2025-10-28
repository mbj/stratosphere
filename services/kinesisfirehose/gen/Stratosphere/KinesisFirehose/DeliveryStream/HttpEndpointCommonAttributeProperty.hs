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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointcommonattribute.html>
    HttpEndpointCommonAttributeProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointcommonattribute.html#cfn-kinesisfirehose-deliverystream-httpendpointcommonattribute-attributename>
                                         attributeName :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointcommonattribute.html#cfn-kinesisfirehose-deliverystream-httpendpointcommonattribute-attributevalue>
                                         attributeValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpEndpointCommonAttributeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> HttpEndpointCommonAttributeProperty
mkHttpEndpointCommonAttributeProperty attributeName attributeValue
  = HttpEndpointCommonAttributeProperty
      {haddock_workaround_ = (), attributeName = attributeName,
       attributeValue = attributeValue}
instance ToResourceProperties HttpEndpointCommonAttributeProperty where
  toResourceProperties HttpEndpointCommonAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.HttpEndpointCommonAttribute",
         supportsTags = Prelude.False,
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