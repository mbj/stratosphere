{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::SQS::Queue type creates an Amazon SQS queue.

module Stratosphere.Resources.SQSQueue where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.SQSRedrivePolicy

-- | Full data type definition for SQSQueue. See 'sqsQueue' for a more
-- convenient constructor.
data SQSQueue =
  SQSQueue
  { _sQSQueueDelaySeconds :: Maybe (Val Integer')
  , _sQSQueueMaximumMessageSize :: Maybe (Val Integer')
  , _sQSQueueMessageRetentionPeriod :: Maybe (Val Integer')
  , _sQSQueueQueueName :: Maybe (Val Text)
  , _sQSQueueReceiveMessageWaitTimeSeconds :: Maybe (Val Integer')
  , _sQSQueueRedrivePolicy :: Maybe SQSRedrivePolicy
  , _sQSQueueVisibilityTimeout :: Maybe (Val Integer')
  } deriving (Show, Generic)

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

-- | The time in seconds that the delivery of all messages in the queue will
-- be delayed. You can specify an integer value of 0 to 900 (15 minutes). The
-- default value is 0.
sqsqDelaySeconds :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqDelaySeconds = lens _sQSQueueDelaySeconds (\s a -> s { _sQSQueueDelaySeconds = a })

-- | The limit of how many bytes a message can contain before Amazon SQS
-- rejects it. You can specify an integer value from 1024 bytes (1 KiB) to
-- 262144 bytes (256 KiB). The default value is 262144 (256 KiB).
sqsqMaximumMessageSize :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqMaximumMessageSize = lens _sQSQueueMaximumMessageSize (\s a -> s { _sQSQueueMaximumMessageSize = a })

-- | The number of seconds Amazon SQS retains a message. You can specify an
-- integer value from 60 seconds (1 minute) to 1209600 seconds (14 days). The
-- default value is 345600 seconds (4 days).
sqsqMessageRetentionPeriod :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqMessageRetentionPeriod = lens _sQSQueueMessageRetentionPeriod (\s a -> s { _sQSQueueMessageRetentionPeriod = a })

-- | A name for the queue. If you don't specify a name, AWS CloudFormation
-- generates a unique physical ID and uses that ID for the queue name. For
-- more information, see Name Type. Important If you specify a name, you
-- cannot do updates that require this resource to be replaced. You can still
-- do updates that require no or some interruption. If you must replace the
-- resource, specify a new name.
sqsqQueueName :: Lens' SQSQueue (Maybe (Val Text))
sqsqQueueName = lens _sQSQueueQueueName (\s a -> s { _sQSQueueQueueName = a })

-- | Specifies the duration, in seconds, that the ReceiveMessage action call
-- waits until a message is in the queue in order to include it in the
-- response, as opposed to returning an empty response if a message is not yet
-- available. You can specify an integer from 1 to 20. The short polling is
-- used as the default or when you specify 0 for this property. For more
-- information, see Amazon SQS Long Poll.
sqsqReceiveMessageWaitTimeSeconds :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqReceiveMessageWaitTimeSeconds = lens _sQSQueueReceiveMessageWaitTimeSeconds (\s a -> s { _sQSQueueReceiveMessageWaitTimeSeconds = a })

-- | Specifies an existing dead letter queue to receive messages after the
-- source queue (this queue) fails to process a message a specified number of
-- times.
sqsqRedrivePolicy :: Lens' SQSQueue (Maybe SQSRedrivePolicy)
sqsqRedrivePolicy = lens _sQSQueueRedrivePolicy (\s a -> s { _sQSQueueRedrivePolicy = a })

-- | The length of time during which a message will be unavailable once a
-- message is delivered from the queue. This blocks other components from
-- receiving the same message and gives the initial component time to process
-- and delete the message from the queue. Values must be from 0 to 43200
-- seconds (12 hours). If no value is specified, the default value of 30
-- seconds will be used. For more information about SQS Queue visibility
-- timeouts, see Visibility Timeout in the Amazon Simple Queue Service
-- Developer Guide.
sqsqVisibilityTimeout :: Lens' SQSQueue (Maybe (Val Integer'))
sqsqVisibilityTimeout = lens _sQSQueueVisibilityTimeout (\s a -> s { _sQSQueueVisibilityTimeout = a })