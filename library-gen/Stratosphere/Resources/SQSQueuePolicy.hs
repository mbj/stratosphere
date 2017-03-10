{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html

module Stratosphere.Resources.SQSQueuePolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for SQSQueuePolicy. See 'sqsQueuePolicy' for a
-- more convenient constructor.
data SQSQueuePolicy =
  SQSQueuePolicy
  { _sQSQueuePolicyPolicyDocument :: Object
  , _sQSQueuePolicyQueues :: [Val Text]
  } deriving (Show, Eq)

instance ToJSON SQSQueuePolicy where
  toJSON SQSQueuePolicy{..} =
    object $
    catMaybes
    [ Just ("PolicyDocument" .= _sQSQueuePolicyPolicyDocument)
    , Just ("Queues" .= _sQSQueuePolicyQueues)
    ]

instance FromJSON SQSQueuePolicy where
  parseJSON (Object obj) =
    SQSQueuePolicy <$>
      obj .: "PolicyDocument" <*>
      obj .: "Queues"
  parseJSON _ = mempty

-- | Constructor for 'SQSQueuePolicy' containing required fields as arguments.
sqsQueuePolicy
  :: Object -- ^ 'sqsqpPolicyDocument'
  -> [Val Text] -- ^ 'sqsqpQueues'
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
sqsqpQueues :: Lens' SQSQueuePolicy [Val Text]
sqsqpQueues = lens _sQSQueuePolicyQueues (\s a -> s { _sQSQueuePolicyQueues = a })
