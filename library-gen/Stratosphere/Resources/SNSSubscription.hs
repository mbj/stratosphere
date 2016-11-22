{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::SNS::Subscription resource subscribes an endpoint to an Amazon
-- Simple Notification Service (Amazon SNS) topic. The owner of the endpoint
-- must confirm the subscription before Amazon SNS creates the subscription.

module Stratosphere.Resources.SNSSubscription where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SNSSubscription. See 'snsSubscription' for
-- a more convenient constructor.
data SNSSubscription =
  SNSSubscription
  { _sNSSubscriptionEndpoint :: Maybe (Val Text)
  , _sNSSubscriptionProtocol :: Maybe (Val Text)
  , _sNSSubscriptionTopicArn :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON SNSSubscription where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON SNSSubscription where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

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

-- | The endpoint that receives notifications from the Amazon SNS topic. The
-- endpoint value depends on the protocol that you specify. For more
-- information, see the Subscribe Endpoint parameter in the Amazon Simple
-- Notification Service API Reference.
snssEndpoint :: Lens' SNSSubscription (Maybe (Val Text))
snssEndpoint = lens _sNSSubscriptionEndpoint (\s a -> s { _sNSSubscriptionEndpoint = a })

-- | The subscription's protocol. For more information, see the Subscribe
-- Protocol parameter in the Amazon Simple Notification Service API Reference.
snssProtocol :: Lens' SNSSubscription (Maybe (Val Text))
snssProtocol = lens _sNSSubscriptionProtocol (\s a -> s { _sNSSubscriptionProtocol = a })

-- | The Amazon Resource Name (ARN) of the topic to subscribe to.
snssTopicArn :: Lens' SNSSubscription (Maybe (Val Text))
snssTopicArn = lens _sNSSubscriptionTopicArn (\s a -> s { _sNSSubscriptionTopicArn = a })