module Stratosphere.IoT.TopicRule.OpenSearchActionProperty (
        OpenSearchActionProperty(..), mkOpenSearchActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenSearchActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-opensearchaction.html>
    OpenSearchActionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-opensearchaction.html#cfn-iot-topicrule-opensearchaction-endpoint>
                              endpoint :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-opensearchaction.html#cfn-iot-topicrule-opensearchaction-id>
                              id :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-opensearchaction.html#cfn-iot-topicrule-opensearchaction-index>
                              index :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-opensearchaction.html#cfn-iot-topicrule-opensearchaction-rolearn>
                              roleArn :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-opensearchaction.html#cfn-iot-topicrule-opensearchaction-type>
                              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenSearchActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> OpenSearchActionProperty
mkOpenSearchActionProperty endpoint id index roleArn type'
  = OpenSearchActionProperty
      {haddock_workaround_ = (), endpoint = endpoint, id = id,
       index = index, roleArn = roleArn, type' = type'}
instance ToResourceProperties OpenSearchActionProperty where
  toResourceProperties OpenSearchActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.OpenSearchAction",
         supportsTags = Prelude.False,
         properties = ["Endpoint" JSON..= endpoint, "Id" JSON..= id,
                       "Index" JSON..= index, "RoleArn" JSON..= roleArn,
                       "Type" JSON..= type']}
instance JSON.ToJSON OpenSearchActionProperty where
  toJSON OpenSearchActionProperty {..}
    = JSON.object
        ["Endpoint" JSON..= endpoint, "Id" JSON..= id,
         "Index" JSON..= index, "RoleArn" JSON..= roleArn,
         "Type" JSON..= type']
instance Property "Endpoint" OpenSearchActionProperty where
  type PropertyType "Endpoint" OpenSearchActionProperty = Value Prelude.Text
  set newValue OpenSearchActionProperty {..}
    = OpenSearchActionProperty {endpoint = newValue, ..}
instance Property "Id" OpenSearchActionProperty where
  type PropertyType "Id" OpenSearchActionProperty = Value Prelude.Text
  set newValue OpenSearchActionProperty {..}
    = OpenSearchActionProperty {id = newValue, ..}
instance Property "Index" OpenSearchActionProperty where
  type PropertyType "Index" OpenSearchActionProperty = Value Prelude.Text
  set newValue OpenSearchActionProperty {..}
    = OpenSearchActionProperty {index = newValue, ..}
instance Property "RoleArn" OpenSearchActionProperty where
  type PropertyType "RoleArn" OpenSearchActionProperty = Value Prelude.Text
  set newValue OpenSearchActionProperty {..}
    = OpenSearchActionProperty {roleArn = newValue, ..}
instance Property "Type" OpenSearchActionProperty where
  type PropertyType "Type" OpenSearchActionProperty = Value Prelude.Text
  set newValue OpenSearchActionProperty {..}
    = OpenSearchActionProperty {type' = newValue, ..}