{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html

module Stratosphere.Resources.SQSQueue where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SQSQueue. See 'sqsQueue' for a more
-- convenient constructor.
data SQSQueue =
  SQSQueue
  { _sQSQueueContentBasedDeduplication :: Maybe (Val Bool)
  , _sQSQueueDelaySeconds :: Maybe (Val Integer)
  , _sQSQueueFifoQueue :: Maybe (Val Bool)
  , _sQSQueueKmsDataKeyReusePeriodSeconds :: Maybe (Val Integer)
  , _sQSQueueKmsMasterKeyId :: Maybe (Val Text)
  , _sQSQueueMaximumMessageSize :: Maybe (Val Integer)
  , _sQSQueueMessageRetentionPeriod :: Maybe (Val Integer)
  , _sQSQueueQueueName :: Maybe (Val Text)
  , _sQSQueueReceiveMessageWaitTimeSeconds :: Maybe (Val Integer)
  , _sQSQueueRedrivePolicy :: Maybe Object
  , _sQSQueueTags :: Maybe [Tag]
  , _sQSQueueVisibilityTimeout :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToResourceProperties SQSQueue where
  toResourceProperties SQSQueue{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SQS::Queue"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ContentBasedDeduplication",) . toJSON) _sQSQueueContentBasedDeduplication
        , fmap (("DelaySeconds",) . toJSON) _sQSQueueDelaySeconds
        , fmap (("FifoQueue",) . toJSON) _sQSQueueFifoQueue
        , fmap (("KmsDataKeyReusePeriodSeconds",) . toJSON) _sQSQueueKmsDataKeyReusePeriodSeconds
        , fmap (("KmsMasterKeyId",) . toJSON) _sQSQueueKmsMasterKeyId
        , fmap (("MaximumMessageSize",) . toJSON) _sQSQueueMaximumMessageSize
        , fmap (("MessageRetentionPeriod",) . toJSON) _sQSQueueMessageRetentionPeriod
        , fmap (("QueueName",) . toJSON) _sQSQueueQueueName
        , fmap (("ReceiveMessageWaitTimeSeconds",) . toJSON) _sQSQueueReceiveMessageWaitTimeSeconds
        , fmap (("RedrivePolicy",) . toJSON) _sQSQueueRedrivePolicy
        , fmap (("Tags",) . toJSON) _sQSQueueTags
        , fmap (("VisibilityTimeout",) . toJSON) _sQSQueueVisibilityTimeout
        ]
    }

-- | Constructor for 'SQSQueue' containing required fields as arguments.
sqsQueue
  :: SQSQueue
sqsQueue  =
  SQSQueue
  { _sQSQueueContentBasedDeduplication = Nothing
  , _sQSQueueDelaySeconds = Nothing
  , _sQSQueueFifoQueue = Nothing
  , _sQSQueueKmsDataKeyReusePeriodSeconds = Nothing
  , _sQSQueueKmsMasterKeyId = Nothing
  , _sQSQueueMaximumMessageSize = Nothing
  , _sQSQueueMessageRetentionPeriod = Nothing
  , _sQSQueueQueueName = Nothing
  , _sQSQueueReceiveMessageWaitTimeSeconds = Nothing
  , _sQSQueueRedrivePolicy = Nothing
  , _sQSQueueTags = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-kmsdatakeyreuseperiodseconds
sqsqKmsDataKeyReusePeriodSeconds :: Lens' SQSQueue (Maybe (Val Integer))
sqsqKmsDataKeyReusePeriodSeconds = lens _sQSQueueKmsDataKeyReusePeriodSeconds (\s a -> s { _sQSQueueKmsDataKeyReusePeriodSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-kmsmasterkeyid
sqsqKmsMasterKeyId :: Lens' SQSQueue (Maybe (Val Text))
sqsqKmsMasterKeyId = lens _sQSQueueKmsMasterKeyId (\s a -> s { _sQSQueueKmsMasterKeyId = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#cfn-sqs-queue-tags
sqsqTags :: Lens' SQSQueue (Maybe [Tag])
sqsqTags = lens _sQSQueueTags (\s a -> s { _sQSQueueTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-visiblitytimeout
sqsqVisibilityTimeout :: Lens' SQSQueue (Maybe (Val Integer))
sqsqVisibilityTimeout = lens _sQSQueueVisibilityTimeout (\s a -> s { _sQSQueueVisibilityTimeout = a })
