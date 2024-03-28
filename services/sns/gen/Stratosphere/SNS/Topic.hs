module Stratosphere.SNS.Topic (
        module Exports, Topic(..), mkTopic
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SNS.Topic.LoggingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SNS.Topic.SubscriptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Topic
  = Topic {archivePolicy :: (Prelude.Maybe JSON.Object),
           contentBasedDeduplication :: (Prelude.Maybe (Value Prelude.Bool)),
           dataProtectionPolicy :: (Prelude.Maybe JSON.Object),
           deliveryStatusLogging :: (Prelude.Maybe [LoggingConfigProperty]),
           displayName :: (Prelude.Maybe (Value Prelude.Text)),
           fifoTopic :: (Prelude.Maybe (Value Prelude.Bool)),
           kmsMasterKeyId :: (Prelude.Maybe (Value Prelude.Text)),
           signatureVersion :: (Prelude.Maybe (Value Prelude.Text)),
           subscription :: (Prelude.Maybe [SubscriptionProperty]),
           tags :: (Prelude.Maybe [Tag]),
           topicName :: (Prelude.Maybe (Value Prelude.Text)),
           tracingConfig :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopic :: Topic
mkTopic
  = Topic
      {archivePolicy = Prelude.Nothing,
       contentBasedDeduplication = Prelude.Nothing,
       dataProtectionPolicy = Prelude.Nothing,
       deliveryStatusLogging = Prelude.Nothing,
       displayName = Prelude.Nothing, fifoTopic = Prelude.Nothing,
       kmsMasterKeyId = Prelude.Nothing,
       signatureVersion = Prelude.Nothing, subscription = Prelude.Nothing,
       tags = Prelude.Nothing, topicName = Prelude.Nothing,
       tracingConfig = Prelude.Nothing}
instance ToResourceProperties Topic where
  toResourceProperties Topic {..}
    = ResourceProperties
        {awsType = "AWS::SNS::Topic", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArchivePolicy" Prelude.<$> archivePolicy,
                            (JSON..=) "ContentBasedDeduplication"
                              Prelude.<$> contentBasedDeduplication,
                            (JSON..=) "DataProtectionPolicy" Prelude.<$> dataProtectionPolicy,
                            (JSON..=) "DeliveryStatusLogging"
                              Prelude.<$> deliveryStatusLogging,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "FifoTopic" Prelude.<$> fifoTopic,
                            (JSON..=) "KmsMasterKeyId" Prelude.<$> kmsMasterKeyId,
                            (JSON..=) "SignatureVersion" Prelude.<$> signatureVersion,
                            (JSON..=) "Subscription" Prelude.<$> subscription,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TopicName" Prelude.<$> topicName,
                            (JSON..=) "TracingConfig" Prelude.<$> tracingConfig])}
instance JSON.ToJSON Topic where
  toJSON Topic {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArchivePolicy" Prelude.<$> archivePolicy,
               (JSON..=) "ContentBasedDeduplication"
                 Prelude.<$> contentBasedDeduplication,
               (JSON..=) "DataProtectionPolicy" Prelude.<$> dataProtectionPolicy,
               (JSON..=) "DeliveryStatusLogging"
                 Prelude.<$> deliveryStatusLogging,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "FifoTopic" Prelude.<$> fifoTopic,
               (JSON..=) "KmsMasterKeyId" Prelude.<$> kmsMasterKeyId,
               (JSON..=) "SignatureVersion" Prelude.<$> signatureVersion,
               (JSON..=) "Subscription" Prelude.<$> subscription,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TopicName" Prelude.<$> topicName,
               (JSON..=) "TracingConfig" Prelude.<$> tracingConfig]))
instance Property "ArchivePolicy" Topic where
  type PropertyType "ArchivePolicy" Topic = JSON.Object
  set newValue Topic {..}
    = Topic {archivePolicy = Prelude.pure newValue, ..}
instance Property "ContentBasedDeduplication" Topic where
  type PropertyType "ContentBasedDeduplication" Topic = Value Prelude.Bool
  set newValue Topic {..}
    = Topic {contentBasedDeduplication = Prelude.pure newValue, ..}
instance Property "DataProtectionPolicy" Topic where
  type PropertyType "DataProtectionPolicy" Topic = JSON.Object
  set newValue Topic {..}
    = Topic {dataProtectionPolicy = Prelude.pure newValue, ..}
instance Property "DeliveryStatusLogging" Topic where
  type PropertyType "DeliveryStatusLogging" Topic = [LoggingConfigProperty]
  set newValue Topic {..}
    = Topic {deliveryStatusLogging = Prelude.pure newValue, ..}
instance Property "DisplayName" Topic where
  type PropertyType "DisplayName" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {displayName = Prelude.pure newValue, ..}
instance Property "FifoTopic" Topic where
  type PropertyType "FifoTopic" Topic = Value Prelude.Bool
  set newValue Topic {..}
    = Topic {fifoTopic = Prelude.pure newValue, ..}
instance Property "KmsMasterKeyId" Topic where
  type PropertyType "KmsMasterKeyId" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {kmsMasterKeyId = Prelude.pure newValue, ..}
instance Property "SignatureVersion" Topic where
  type PropertyType "SignatureVersion" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {signatureVersion = Prelude.pure newValue, ..}
instance Property "Subscription" Topic where
  type PropertyType "Subscription" Topic = [SubscriptionProperty]
  set newValue Topic {..}
    = Topic {subscription = Prelude.pure newValue, ..}
instance Property "Tags" Topic where
  type PropertyType "Tags" Topic = [Tag]
  set newValue Topic {..} = Topic {tags = Prelude.pure newValue, ..}
instance Property "TopicName" Topic where
  type PropertyType "TopicName" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {topicName = Prelude.pure newValue, ..}
instance Property "TracingConfig" Topic where
  type PropertyType "TracingConfig" Topic = Value Prelude.Text
  set newValue Topic {..}
    = Topic {tracingConfig = Prelude.pure newValue, ..}