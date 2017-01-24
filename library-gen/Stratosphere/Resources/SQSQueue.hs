{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html

module Stratosphere.Resources.SQSQueue where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for SQSQueue. See 'sqsQueue' for a more
-- | convenient constructor.
data SQSQueue =
  SQSQueue
  { _sQSQueueDelaySeconds :: Maybe (Val Integer')
  , _sQSQueueMaximumMessageSize :: Maybe (Val Integer')
  , _sQSQueueMessageRetentionPeriod :: Maybe (Val Integer')
  , _sQSQueueQueueName :: Maybe (Val Text)
  , _sQSQueueReceiveMessageWaitTimeSeconds :: Maybe (Val Integer')
  , _sQSQueueRedrivePolicy :: Maybe Object
  , _sQSQueueVisibilityTimeout :: Maybe (Val Integer')
  } deriving (Show, Eq)

instance ToJSON SQSQueue where
  toJSON SQSQueue{..} =
    object
    [ "DelaySeconds" .= _sQSQueueDelaySeconds
    , "MaximumMessageSize" .= _sQSQueueMaximumMessageSize
    , "MessageRetentionPeriod" .= _sQSQueueMessageRetentionPeriod
    , "QueueName" .= _sQSQueueQueueName
    , "ReceiveMessageWaitTimeSeconds" .= _sQSQueueReceiveMessageWaitTimeSeconds
    , "RedrivePolicy" .= _sQSQueueRedrivePolicy
    , "VisibilityTimeout" .= _sQSQueueVisibilityTimeout
    ]

instance FromJSON SQSQueue where
  parseJSON (Object obj) =
    SQSQueue <$>
      obj .: "DelaySeconds" <*>
      obj .: "MaximumMessageSize" <*>
      obj .: "MessageRetentionPeriod" <*>
      obj .: "QueueName" <*>
      obj .: "ReceiveMessageWaitTimeSeconds" <*>
      obj .: "RedrivePolicy" <*>
      obj .: "VisibilityTimeout"
  parseJSON _ = mempty

-- | Constructor for 'SQSQueue' containing required fields as arguments.
sqsQueue
  :: SQSQueue
sqsQueue  =
  SQSQueue
  { _sQSQueueDelaySeconds = Nothing
  , _sQSQueueMaximumMessageSize = Nothing
  , _sQSQueueMessageRetentionPeriod = Nothing
  , _sQSQueueQueueName = Nothing
  , _sQSQueueReceiveMessageWaitTimeSeconds = Nothing
  , _sQSQueueRedrivePolicy = Nothing
  , _sQSQueueVisibilityTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-delayseconds
sqsqDelaySeconds :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqDelaySeconds = lens _sQSQueueDelaySeconds (\s a -> s { _sQSQueueDelaySeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-maxmesgsize
sqsqMaximumMessageSize :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqMaximumMessageSize = lens _sQSQueueMaximumMessageSize (\s a -> s { _sQSQueueMaximumMessageSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-msgretentionperiod
sqsqMessageRetentionPeriod :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqMessageRetentionPeriod = lens _sQSQueueMessageRetentionPeriod (\s a -> s { _sQSQueueMessageRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-name
sqsqQueueName :: Lens' SQSQueue (Maybe (Val Text))
sqsqQueueName = lens _sQSQueueQueueName (\s a -> s { _sQSQueueQueueName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-receivemsgwaittime
sqsqReceiveMessageWaitTimeSeconds :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqReceiveMessageWaitTimeSeconds = lens _sQSQueueReceiveMessageWaitTimeSeconds (\s a -> s { _sQSQueueReceiveMessageWaitTimeSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-redrive
sqsqRedrivePolicy :: Lens' SQSQueue (Maybe Object)
sqsqRedrivePolicy = lens _sQSQueueRedrivePolicy (\s a -> s { _sQSQueueRedrivePolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-visiblitytimeout
sqsqVisibilityTimeout :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqVisibilityTimeout = lens _sQSQueueVisibilityTimeout (\s a -> s { _sQSQueueVisibilityTimeout = a })
