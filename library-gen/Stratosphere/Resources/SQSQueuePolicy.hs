{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::SQS::QueuePolicy type applies a policy to SQS queues.
-- AWS::SQS::QueuePolicy Snippet: Declaring an Amazon SQS Policy

module Stratosphere.Resources.SQSQueuePolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SQSQueuePolicy. See 'sqsQueuePolicy' for a
-- more convenient constructor.
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

-- | A policy document containing permissions to add to the specified SQS
-- queues.
sqsqpPolicyDocument :: Lens' SQSQueuePolicy Object
sqsqpPolicyDocument = lens _sQSQueuePolicyPolicyDocument (\s a -> s { _sQSQueuePolicyPolicyDocument = a })

-- | The URLs of the queues to which you want to add the policy. You can use
-- the Ref function to specify an AWS::SQS::Queue resource.
sqsqpQueues :: Lens' SQSQueuePolicy [Val Text]
sqsqpQueues = lens _sQSQueuePolicyQueues (\s a -> s { _sQSQueuePolicyQueues = a })