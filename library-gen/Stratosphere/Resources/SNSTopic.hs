{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html

module Stratosphere.Resources.SNSTopic where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.SNSTopicSubscription

-- | Full data type definition for SNSTopic. See 'snsTopic' for a more
-- | convenient constructor.
data SNSTopic =
  SNSTopic
  { _sNSTopicDisplayName :: Maybe (Val Text)
  , _sNSTopicSubscription :: Maybe [SNSTopicSubscription]
  , _sNSTopicTopicName :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON SNSTopic where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

instance FromJSON SNSTopic where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

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
