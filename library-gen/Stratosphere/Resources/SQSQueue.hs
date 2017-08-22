{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html

module Stratosphere.Resources.SQSQueue where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for SQSQueue. See 'sqsQueue' for a more
-- convenient constructor.
data SQSQueue =
  SQSQueue
  { _sQSQueueContentBasedDeduplication :: Maybe (Val Bool)
  , _sQSQueueDelaySeconds :: Maybe (Val Integer)
  , _sQSQueueFifoQueue :: Maybe (Val Bool)
  , _sQSQueueMaximumMessageSize :: Maybe (Val Integer)
  , _sQSQueueMessageRetentionPeriod :: Maybe (Val Integer)
  , _sQSQueueQueueName :: Maybe (Val Text)
  , _sQSQueueReceiveMessageWaitTimeSeconds :: Maybe (Val Integer)
  , _sQSQueueRedrivePolicy :: Maybe Object
  , _sQSQueueVisibilityTimeout :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON SQSQueue where
  toJSON SQSQueue{..} =
    object $
    catMaybes
    [ fmap (("ContentBasedDeduplication",) . toJSON . fmap Bool') _sQSQueueContentBasedDeduplication
    , fmap (("DelaySeconds",) . toJSON . fmap Integer') _sQSQueueDelaySeconds
    , fmap (("FifoQueue",) . toJSON . fmap Bool') _sQSQueueFifoQueue
    , fmap (("MaximumMessageSize",) . toJSON . fmap Integer') _sQSQueueMaximumMessageSize
    , fmap (("MessageRetentionPeriod",) . toJSON . fmap Integer') _sQSQueueMessageRetentionPeriod
    , fmap (("QueueName",) . toJSON) _sQSQueueQueueName
    , fmap (("ReceiveMessageWaitTimeSeconds",) . toJSON . fmap Integer') _sQSQueueReceiveMessageWaitTimeSeconds
    , fmap (("RedrivePolicy",) . toJSON) _sQSQueueRedrivePolicy
    , fmap (("VisibilityTimeout",) . toJSON . fmap Integer') _sQSQueueVisibilityTimeout
    ]

instance FromJSON SQSQueue where
  parseJSON (Object obj) =
    SQSQueue <$>
      fmap (fmap (fmap unBool')) (obj .:? "ContentBasedDeduplication") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "DelaySeconds") <*>
      fmap (fmap (fmap unBool')) (obj .:? "FifoQueue") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "MaximumMessageSize") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "MessageRetentionPeriod") <*>
      (obj .:? "QueueName") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "ReceiveMessageWaitTimeSeconds") <*>
      (obj .:? "RedrivePolicy") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "VisibilityTimeout")
  parseJSON _ = mempty

-- | Constructor for 'SQSQueue' containing required fields as arguments.
sqsQueue
  :: SQSQueue
sqsQueue  =
  SQSQueue
  { _sQSQueueContentBasedDeduplication = Nothing
  , _sQSQueueDelaySeconds = Nothing
  , _sQSQueueFifoQueue = Nothing
  , _sQSQueueMaximumMessageSize = Nothing
  , _sQSQueueMessageRetentionPeriod = Nothing
  , _sQSQueueQueueName = Nothing
  , _sQSQueueReceiveMessageWaitTimeSeconds = Nothing
  , _sQSQueueRedrivePolicy = Nothing
  , _sQSQueueVisibilityTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-contentbaseddeduplication
sqsqContentBasedDeduplication :: Lens' SQSQueue (Maybe (Val Bool))
sqsqContentBasedDeduplication = lens _sQSQueueContentBasedDeduplication (\s a -> s { _sQSQueueContentBasedDeduplication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-delayseconds
sqsqDelaySeconds :: Lens' SQSQueue (Maybe (Val Integer))
sqsqDelaySeconds = lens _sQSQueueDelaySeconds (\s a -> s { _sQSQueueDelaySeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-fifoqueue
sqsqFifoQueue :: Lens' SQSQueue (Maybe (Val Bool))
sqsqFifoQueue = lens _sQSQueueFifoQueue (\s a -> s { _sQSQueueFifoQueue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-maxmesgsize
sqsqMaximumMessageSize :: Lens' SQSQueue (Maybe (Val Integer))
sqsqMaximumMessageSize = lens _sQSQueueMaximumMessageSize (\s a -> s { _sQSQueueMaximumMessageSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-msgretentionperiod
sqsqMessageRetentionPeriod :: Lens' SQSQueue (Maybe (Val Integer))
sqsqMessageRetentionPeriod = lens _sQSQueueMessageRetentionPeriod (\s a -> s { _sQSQueueMessageRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-name
sqsqQueueName :: Lens' SQSQueue (Maybe (Val Text))
sqsqQueueName = lens _sQSQueueQueueName (\s a -> s { _sQSQueueQueueName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-receivemsgwaittime
sqsqReceiveMessageWaitTimeSeconds :: Lens' SQSQueue (Maybe (Val Integer))
sqsqReceiveMessageWaitTimeSeconds = lens _sQSQueueReceiveMessageWaitTimeSeconds (\s a -> s { _sQSQueueReceiveMessageWaitTimeSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-redrive
sqsqRedrivePolicy :: Lens' SQSQueue (Maybe Object)
sqsqRedrivePolicy = lens _sQSQueueRedrivePolicy (\s a -> s { _sQSQueueRedrivePolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-visiblitytimeout
sqsqVisibilityTimeout :: Lens' SQSQueue (Maybe (Val Integer))
sqsqVisibilityTimeout = lens _sQSQueueVisibilityTimeout (\s a -> s { _sQSQueueVisibilityTimeout = a })
