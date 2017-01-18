{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html

module Stratosphere.Resources.SQSQueue where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

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
  } deriving (Show, Eq, Generic)

instance ToJSON SQSQueue where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

instance FromJSON SQSQueue where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

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
