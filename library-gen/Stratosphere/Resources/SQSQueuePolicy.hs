{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html

module Stratosphere.Resources.SQSQueuePolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SQSQueuePolicy. See 'sqsQueuePolicy' for a
-- | more convenient constructor.
data SQSQueuePolicy =
  SQSQueuePolicy
  { _sQSQueuePolicyPolicyDocument :: Object
  , _sQSQueuePolicyQueues :: [Val Text]
  } deriving (Show, Generic)

instance ToJSON SQSQueuePolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON SQSQueuePolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

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
