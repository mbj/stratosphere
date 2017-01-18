{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html

module Stratosphere.Resources.SNSTopicPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SNSTopicPolicy. See 'snsTopicPolicy' for a
-- | more convenient constructor.
data SNSTopicPolicy =
  SNSTopicPolicy
  { _sNSTopicPolicyPolicyDocument :: Object
  , _sNSTopicPolicyTopics :: [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON SNSTopicPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON SNSTopicPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

-- | Constructor for 'SNSTopicPolicy' containing required fields as arguments.
snsTopicPolicy
  :: Object -- ^ 'snstpPolicyDocument'
  -> [Val Text] -- ^ 'snstpTopics'
  -> SNSTopicPolicy
snsTopicPolicy policyDocumentarg topicsarg =
  SNSTopicPolicy
  { _sNSTopicPolicyPolicyDocument = policyDocumentarg
  , _sNSTopicPolicyTopics = topicsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-policydocument
snstpPolicyDocument :: Lens' SNSTopicPolicy Object
snstpPolicyDocument = lens _sNSTopicPolicyPolicyDocument (\s a -> s { _sNSTopicPolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-topics
snstpTopics :: Lens' SNSTopicPolicy [Val Text]
snstpTopics = lens _sNSTopicPolicyTopics (\s a -> s { _sNSTopicPolicyTopics = a })
