{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html

module Stratosphere.Resources.SNSTopic where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.SNSTopicSubscription

-- | Full data type definition for SNSTopic. See 'snsTopic' for a more
-- | convenient constructor.
data SNSTopic =
  SNSTopic
  { _sNSTopicDisplayName :: Maybe (Val Text)
  , _sNSTopicSubscription :: Maybe [SNSTopicSubscription]
  , _sNSTopicTopicName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SNSTopic where
  toJSON SNSTopic{..} =
    object $
    catMaybes
    [ ("DisplayName" .=) <$> _sNSTopicDisplayName
    , ("Subscription" .=) <$> _sNSTopicSubscription
    , ("TopicName" .=) <$> _sNSTopicTopicName
    ]

instance FromJSON SNSTopic where
  parseJSON (Object obj) =
    SNSTopic <$>
      obj .:? "DisplayName" <*>
      obj .:? "Subscription" <*>
      obj .:? "TopicName"
  parseJSON _ = mempty

-- | Constructor for 'SNSTopic' containing required fields as arguments.
snsTopic
  :: SNSTopic
snsTopic  =
  SNSTopic
  { _sNSTopicDisplayName = Nothing
  , _sNSTopicSubscription = Nothing
  , _sNSTopicTopicName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-displayname
snstDisplayName :: Lens' SNSTopic (Maybe (Val Text))
snstDisplayName = lens _sNSTopicDisplayName (\s a -> s { _sNSTopicDisplayName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-subscription
snstSubscription :: Lens' SNSTopic (Maybe [SNSTopicSubscription])
snstSubscription = lens _sNSTopicSubscription (\s a -> s { _sNSTopicSubscription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-topicname
snstTopicName :: Lens' SNSTopic (Maybe (Val Text))
snstTopicName = lens _sNSTopicTopicName (\s a -> s { _sNSTopicTopicName = a })
