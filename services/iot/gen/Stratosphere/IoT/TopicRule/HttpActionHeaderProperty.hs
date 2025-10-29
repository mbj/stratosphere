module Stratosphere.IoT.TopicRule.HttpActionHeaderProperty (
        HttpActionHeaderProperty(..), mkHttpActionHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpActionHeaderProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpactionheader.html>
    HttpActionHeaderProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpactionheader.html#cfn-iot-topicrule-httpactionheader-key>
                              key :: (Value Prelude.Text),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpactionheader.html#cfn-iot-topicrule-httpactionheader-value>
                              value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpActionHeaderProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> HttpActionHeaderProperty
mkHttpActionHeaderProperty key value
  = HttpActionHeaderProperty {key = key, value = value}
instance ToResourceProperties HttpActionHeaderProperty where
  toResourceProperties HttpActionHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.HttpActionHeader",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON HttpActionHeaderProperty where
  toJSON HttpActionHeaderProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" HttpActionHeaderProperty where
  type PropertyType "Key" HttpActionHeaderProperty = Value Prelude.Text
  set newValue HttpActionHeaderProperty {..}
    = HttpActionHeaderProperty {key = newValue, ..}
instance Property "Value" HttpActionHeaderProperty where
  type PropertyType "Value" HttpActionHeaderProperty = Value Prelude.Text
  set newValue HttpActionHeaderProperty {..}
    = HttpActionHeaderProperty {value = newValue, ..}