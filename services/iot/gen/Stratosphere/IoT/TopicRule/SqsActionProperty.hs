module Stratosphere.IoT.TopicRule.SqsActionProperty (
        SqsActionProperty(..), mkSqsActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqsActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html>
    SqsActionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html#cfn-iot-topicrule-sqsaction-queueurl>
                       queueUrl :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html#cfn-iot-topicrule-sqsaction-rolearn>
                       roleArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html#cfn-iot-topicrule-sqsaction-usebase64>
                       useBase64 :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqsActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SqsActionProperty
mkSqsActionProperty queueUrl roleArn
  = SqsActionProperty
      {haddock_workaround_ = (), queueUrl = queueUrl, roleArn = roleArn,
       useBase64 = Prelude.Nothing}
instance ToResourceProperties SqsActionProperty where
  toResourceProperties SqsActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.SqsAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueueUrl" JSON..= queueUrl, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes [(JSON..=) "UseBase64" Prelude.<$> useBase64]))}
instance JSON.ToJSON SqsActionProperty where
  toJSON SqsActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueueUrl" JSON..= queueUrl, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes [(JSON..=) "UseBase64" Prelude.<$> useBase64])))
instance Property "QueueUrl" SqsActionProperty where
  type PropertyType "QueueUrl" SqsActionProperty = Value Prelude.Text
  set newValue SqsActionProperty {..}
    = SqsActionProperty {queueUrl = newValue, ..}
instance Property "RoleArn" SqsActionProperty where
  type PropertyType "RoleArn" SqsActionProperty = Value Prelude.Text
  set newValue SqsActionProperty {..}
    = SqsActionProperty {roleArn = newValue, ..}
instance Property "UseBase64" SqsActionProperty where
  type PropertyType "UseBase64" SqsActionProperty = Value Prelude.Bool
  set newValue SqsActionProperty {..}
    = SqsActionProperty {useBase64 = Prelude.pure newValue, ..}