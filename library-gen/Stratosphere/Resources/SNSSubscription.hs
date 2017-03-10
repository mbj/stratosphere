{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html

module Stratosphere.Resources.SNSSubscription where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for SNSSubscription. See 'snsSubscription' for
-- a more convenient constructor.
data SNSSubscription =
  SNSSubscription
  { _sNSSubscriptionEndpoint :: Maybe (Val Text)
  , _sNSSubscriptionProtocol :: Maybe (Val SNSProtocol)
  , _sNSSubscriptionTopicArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SNSSubscription where
  toJSON SNSSubscription{..} =
    object $
    catMaybes
    [ ("Endpoint" .=) <$> _sNSSubscriptionEndpoint
    , ("Protocol" .=) <$> _sNSSubscriptionProtocol
    , ("TopicArn" .=) <$> _sNSSubscriptionTopicArn
    ]

instance FromJSON SNSSubscription where
  parseJSON (Object obj) =
    SNSSubscription <$>
      obj .:? "Endpoint" <*>
      obj .:? "Protocol" <*>
      obj .:? "TopicArn"
  parseJSON _ = mempty

-- | Constructor for 'SNSSubscription' containing required fields as
-- arguments.
snsSubscription
  :: SNSSubscription
snsSubscription  =
  SNSSubscription
  { _sNSSubscriptionEndpoint = Nothing
  , _sNSSubscriptionProtocol = Nothing
  , _sNSSubscriptionTopicArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-endpoint
snssEndpoint :: Lens' SNSSubscription (Maybe (Val Text))
snssEndpoint = lens _sNSSubscriptionEndpoint (\s a -> s { _sNSSubscriptionEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-protocol
snssProtocol :: Lens' SNSSubscription (Maybe (Val SNSProtocol))
snssProtocol = lens _sNSSubscriptionProtocol (\s a -> s { _sNSSubscriptionProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#topicarn
snssTopicArn :: Lens' SNSSubscription (Maybe (Val Text))
snssTopicArn = lens _sNSSubscriptionTopicArn (\s a -> s { _sNSSubscriptionTopicArn = a })
