{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html

module Stratosphere.Resources.SNSTopicPolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for SNSTopicPolicy. See 'snsTopicPolicy' for a
-- more convenient constructor.
data SNSTopicPolicy =
  SNSTopicPolicy
  { _sNSTopicPolicyPolicyDocument :: Object
  , _sNSTopicPolicyTopics :: ValList Text
  } deriving (Show, Eq)

instance ToJSON SNSTopicPolicy where
  toJSON SNSTopicPolicy{..} =
    object $
    catMaybes
    [ Just ("PolicyDocument" .= _sNSTopicPolicyPolicyDocument)
    , Just ("Topics" .= _sNSTopicPolicyTopics)
    ]

instance FromJSON SNSTopicPolicy where
  parseJSON (Object obj) =
    SNSTopicPolicy <$>
      obj .: "PolicyDocument" <*>
      obj .: "Topics"
  parseJSON _ = mempty

-- | Constructor for 'SNSTopicPolicy' containing required fields as arguments.
snsTopicPolicy
  :: Object -- ^ 'snstpPolicyDocument'
  -> ValList Text -- ^ 'snstpTopics'
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
snstpTopics :: Lens' SNSTopicPolicy (ValList Text)
snstpTopics = lens _sNSTopicPolicyTopics (\s a -> s { _sNSTopicPolicyTopics = a })
