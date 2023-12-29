module Stratosphere.SQS.Queue (
        Queue(..), mkQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Queue
  = Queue {contentBasedDeduplication :: (Prelude.Maybe (Value Prelude.Bool)),
           deduplicationScope :: (Prelude.Maybe (Value Prelude.Text)),
           delaySeconds :: (Prelude.Maybe (Value Prelude.Integer)),
           fifoQueue :: (Prelude.Maybe (Value Prelude.Bool)),
           fifoThroughputLimit :: (Prelude.Maybe (Value Prelude.Text)),
           kmsDataKeyReusePeriodSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
           kmsMasterKeyId :: (Prelude.Maybe (Value Prelude.Text)),
           maximumMessageSize :: (Prelude.Maybe (Value Prelude.Integer)),
           messageRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
           queueName :: (Prelude.Maybe (Value Prelude.Text)),
           receiveMessageWaitTimeSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
           redriveAllowPolicy :: (Prelude.Maybe JSON.Object),
           redrivePolicy :: (Prelude.Maybe JSON.Object),
           sqsManagedSseEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           tags :: (Prelude.Maybe [Tag]),
           visibilityTimeout :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueue :: Queue
mkQueue
  = Queue
      {contentBasedDeduplication = Prelude.Nothing,
       deduplicationScope = Prelude.Nothing,
       delaySeconds = Prelude.Nothing, fifoQueue = Prelude.Nothing,
       fifoThroughputLimit = Prelude.Nothing,
       kmsDataKeyReusePeriodSeconds = Prelude.Nothing,
       kmsMasterKeyId = Prelude.Nothing,
       maximumMessageSize = Prelude.Nothing,
       messageRetentionPeriod = Prelude.Nothing,
       queueName = Prelude.Nothing,
       receiveMessageWaitTimeSeconds = Prelude.Nothing,
       redriveAllowPolicy = Prelude.Nothing,
       redrivePolicy = Prelude.Nothing,
       sqsManagedSseEnabled = Prelude.Nothing, tags = Prelude.Nothing,
       visibilityTimeout = Prelude.Nothing}
instance ToResourceProperties Queue where
  toResourceProperties Queue {..}
    = ResourceProperties
        {awsType = "AWS::SQS::Queue", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContentBasedDeduplication"
                              Prelude.<$> contentBasedDeduplication,
                            (JSON..=) "DeduplicationScope" Prelude.<$> deduplicationScope,
                            (JSON..=) "DelaySeconds" Prelude.<$> delaySeconds,
                            (JSON..=) "FifoQueue" Prelude.<$> fifoQueue,
                            (JSON..=) "FifoThroughputLimit" Prelude.<$> fifoThroughputLimit,
                            (JSON..=) "KmsDataKeyReusePeriodSeconds"
                              Prelude.<$> kmsDataKeyReusePeriodSeconds,
                            (JSON..=) "KmsMasterKeyId" Prelude.<$> kmsMasterKeyId,
                            (JSON..=) "MaximumMessageSize" Prelude.<$> maximumMessageSize,
                            (JSON..=) "MessageRetentionPeriod"
                              Prelude.<$> messageRetentionPeriod,
                            (JSON..=) "QueueName" Prelude.<$> queueName,
                            (JSON..=) "ReceiveMessageWaitTimeSeconds"
                              Prelude.<$> receiveMessageWaitTimeSeconds,
                            (JSON..=) "RedriveAllowPolicy" Prelude.<$> redriveAllowPolicy,
                            (JSON..=) "RedrivePolicy" Prelude.<$> redrivePolicy,
                            (JSON..=) "SqsManagedSseEnabled" Prelude.<$> sqsManagedSseEnabled,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VisibilityTimeout" Prelude.<$> visibilityTimeout])}
instance JSON.ToJSON Queue where
  toJSON Queue {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContentBasedDeduplication"
                 Prelude.<$> contentBasedDeduplication,
               (JSON..=) "DeduplicationScope" Prelude.<$> deduplicationScope,
               (JSON..=) "DelaySeconds" Prelude.<$> delaySeconds,
               (JSON..=) "FifoQueue" Prelude.<$> fifoQueue,
               (JSON..=) "FifoThroughputLimit" Prelude.<$> fifoThroughputLimit,
               (JSON..=) "KmsDataKeyReusePeriodSeconds"
                 Prelude.<$> kmsDataKeyReusePeriodSeconds,
               (JSON..=) "KmsMasterKeyId" Prelude.<$> kmsMasterKeyId,
               (JSON..=) "MaximumMessageSize" Prelude.<$> maximumMessageSize,
               (JSON..=) "MessageRetentionPeriod"
                 Prelude.<$> messageRetentionPeriod,
               (JSON..=) "QueueName" Prelude.<$> queueName,
               (JSON..=) "ReceiveMessageWaitTimeSeconds"
                 Prelude.<$> receiveMessageWaitTimeSeconds,
               (JSON..=) "RedriveAllowPolicy" Prelude.<$> redriveAllowPolicy,
               (JSON..=) "RedrivePolicy" Prelude.<$> redrivePolicy,
               (JSON..=) "SqsManagedSseEnabled" Prelude.<$> sqsManagedSseEnabled,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VisibilityTimeout" Prelude.<$> visibilityTimeout]))
instance Property "ContentBasedDeduplication" Queue where
  type PropertyType "ContentBasedDeduplication" Queue = Value Prelude.Bool
  set newValue Queue {..}
    = Queue {contentBasedDeduplication = Prelude.pure newValue, ..}
instance Property "DeduplicationScope" Queue where
  type PropertyType "DeduplicationScope" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {deduplicationScope = Prelude.pure newValue, ..}
instance Property "DelaySeconds" Queue where
  type PropertyType "DelaySeconds" Queue = Value Prelude.Integer
  set newValue Queue {..}
    = Queue {delaySeconds = Prelude.pure newValue, ..}
instance Property "FifoQueue" Queue where
  type PropertyType "FifoQueue" Queue = Value Prelude.Bool
  set newValue Queue {..}
    = Queue {fifoQueue = Prelude.pure newValue, ..}
instance Property "FifoThroughputLimit" Queue where
  type PropertyType "FifoThroughputLimit" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {fifoThroughputLimit = Prelude.pure newValue, ..}
instance Property "KmsDataKeyReusePeriodSeconds" Queue where
  type PropertyType "KmsDataKeyReusePeriodSeconds" Queue = Value Prelude.Integer
  set newValue Queue {..}
    = Queue {kmsDataKeyReusePeriodSeconds = Prelude.pure newValue, ..}
instance Property "KmsMasterKeyId" Queue where
  type PropertyType "KmsMasterKeyId" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {kmsMasterKeyId = Prelude.pure newValue, ..}
instance Property "MaximumMessageSize" Queue where
  type PropertyType "MaximumMessageSize" Queue = Value Prelude.Integer
  set newValue Queue {..}
    = Queue {maximumMessageSize = Prelude.pure newValue, ..}
instance Property "MessageRetentionPeriod" Queue where
  type PropertyType "MessageRetentionPeriod" Queue = Value Prelude.Integer
  set newValue Queue {..}
    = Queue {messageRetentionPeriod = Prelude.pure newValue, ..}
instance Property "QueueName" Queue where
  type PropertyType "QueueName" Queue = Value Prelude.Text
  set newValue Queue {..}
    = Queue {queueName = Prelude.pure newValue, ..}
instance Property "ReceiveMessageWaitTimeSeconds" Queue where
  type PropertyType "ReceiveMessageWaitTimeSeconds" Queue = Value Prelude.Integer
  set newValue Queue {..}
    = Queue {receiveMessageWaitTimeSeconds = Prelude.pure newValue, ..}
instance Property "RedriveAllowPolicy" Queue where
  type PropertyType "RedriveAllowPolicy" Queue = JSON.Object
  set newValue Queue {..}
    = Queue {redriveAllowPolicy = Prelude.pure newValue, ..}
instance Property "RedrivePolicy" Queue where
  type PropertyType "RedrivePolicy" Queue = JSON.Object
  set newValue Queue {..}
    = Queue {redrivePolicy = Prelude.pure newValue, ..}
instance Property "SqsManagedSseEnabled" Queue where
  type PropertyType "SqsManagedSseEnabled" Queue = Value Prelude.Bool
  set newValue Queue {..}
    = Queue {sqsManagedSseEnabled = Prelude.pure newValue, ..}
instance Property "Tags" Queue where
  type PropertyType "Tags" Queue = [Tag]
  set newValue Queue {..} = Queue {tags = Prelude.pure newValue, ..}
instance Property "VisibilityTimeout" Queue where
  type PropertyType "VisibilityTimeout" Queue = Value Prelude.Integer
  set newValue Queue {..}
    = Queue {visibilityTimeout = Prelude.pure newValue, ..}