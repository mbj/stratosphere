{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::SNS::TopicPolicy resource associates Amazon SNS topics with a
-- policy.

module Stratosphere.Resources.SNSTopicPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SNSTopicPolicy. See 'snsTopicPolicy' for a
-- more convenient constructor.
data SNSTopicPolicy =
  SNSTopicPolicy
  { _sNSTopicPolicyPolicyDocument :: Object
  , _sNSTopicPolicyTopics :: [String]
  } deriving (Show, Generic)

instance ToJSON SNSTopicPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON SNSTopicPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

-- | Constructor for 'SNSTopicPolicy' containing required fields as arguments.
snsTopicPolicy
  :: Object -- ^ 'snstpPolicyDocument'
  -> [String] -- ^ 'snstpTopics'
  -> SNSTopicPolicy
snsTopicPolicy policyDocumentarg topicsarg =
  SNSTopicPolicy
  { _sNSTopicPolicyPolicyDocument = policyDocumentarg
  , _sNSTopicPolicyTopics = topicsarg
  }

-- | A policy document that contains permissions to add to the specified SNS
-- topics.
snstpPolicyDocument :: Lens' SNSTopicPolicy Object
snstpPolicyDocument = lens _sNSTopicPolicyPolicyDocument (\s a -> s { _sNSTopicPolicyPolicyDocument = a })

-- | The Amazon Resource Names (ARN) of the topics to which you want to add
-- the policy. You can use the Ref function to specify an AWS::SNS::Topic
-- resource.
snstpTopics :: Lens' SNSTopicPolicy [String]
snstpTopics = lens _sNSTopicPolicyTopics (\s a -> s { _sNSTopicPolicyTopics = a })