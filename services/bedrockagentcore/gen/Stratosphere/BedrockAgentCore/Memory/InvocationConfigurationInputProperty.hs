module Stratosphere.BedrockAgentCore.Memory.InvocationConfigurationInputProperty (
        InvocationConfigurationInputProperty(..),
        mkInvocationConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InvocationConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-invocationconfigurationinput.html>
    InvocationConfigurationInputProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-invocationconfigurationinput.html#cfn-bedrockagentcore-memory-invocationconfigurationinput-payloaddeliverybucketname>
                                          payloadDeliveryBucketName :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-invocationconfigurationinput.html#cfn-bedrockagentcore-memory-invocationconfigurationinput-topicarn>
                                          topicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInvocationConfigurationInputProperty ::
  InvocationConfigurationInputProperty
mkInvocationConfigurationInputProperty
  = InvocationConfigurationInputProperty
      {haddock_workaround_ = (),
       payloadDeliveryBucketName = Prelude.Nothing,
       topicArn = Prelude.Nothing}
instance ToResourceProperties InvocationConfigurationInputProperty where
  toResourceProperties InvocationConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.InvocationConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PayloadDeliveryBucketName"
                              Prelude.<$> payloadDeliveryBucketName,
                            (JSON..=) "TopicArn" Prelude.<$> topicArn])}
instance JSON.ToJSON InvocationConfigurationInputProperty where
  toJSON InvocationConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PayloadDeliveryBucketName"
                 Prelude.<$> payloadDeliveryBucketName,
               (JSON..=) "TopicArn" Prelude.<$> topicArn]))
instance Property "PayloadDeliveryBucketName" InvocationConfigurationInputProperty where
  type PropertyType "PayloadDeliveryBucketName" InvocationConfigurationInputProperty = Value Prelude.Text
  set newValue InvocationConfigurationInputProperty {..}
    = InvocationConfigurationInputProperty
        {payloadDeliveryBucketName = Prelude.pure newValue, ..}
instance Property "TopicArn" InvocationConfigurationInputProperty where
  type PropertyType "TopicArn" InvocationConfigurationInputProperty = Value Prelude.Text
  set newValue InvocationConfigurationInputProperty {..}
    = InvocationConfigurationInputProperty
        {topicArn = Prelude.pure newValue, ..}