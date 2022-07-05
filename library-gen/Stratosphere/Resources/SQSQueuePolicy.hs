{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html

module Stratosphere.Resources.SQSQueuePolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for SQSQueuePolicy. See 'sqsQueuePolicy' for a
-- more convenient constructor.
data SQSQueuePolicy =
  SQSQueuePolicy
  { _sQSQueuePolicyPolicyDocument :: Object
  , _sQSQueuePolicyQueues :: ValList Text
  } deriving (Show, Eq)

instance ToResourceProperties SQSQueuePolicy where
  toResourceProperties SQSQueuePolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SQS::QueuePolicy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("PolicyDocument",) . toJSON) _sQSQueuePolicyPolicyDocument
        , (Just . ("Queues",) . toJSON) _sQSQueuePolicyQueues
        ]
    }

-- | Constructor for 'SQSQueuePolicy' containing required fields as arguments.
sqsQueuePolicy
  :: Object -- ^ 'sqsqpPolicyDocument'
  -> ValList Text -- ^ 'sqsqpQueues'
  -> SQSQueuePolicy
sqsQueuePolicy policyDocumentarg queuesarg =
  SQSQueuePolicy
  { _sQSQueuePolicyPolicyDocument = policyDocumentarg
  , _sQSQueuePolicyQueues = queuesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-policydoc
sqsqpPolicyDocument :: Lens' SQSQueuePolicy Object
sqsqpPolicyDocument = lens _sQSQueuePolicyPolicyDocument (\s a -> s { _sQSQueuePolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-queues
sqsqpQueues :: Lens' SQSQueuePolicy (ValList Text)
sqsqpQueues = lens _sQSQueuePolicyQueues (\s a -> s { _sQSQueuePolicyQueues = a })
