{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Subscription is an embedded property of the AWS::SNS::Topic resource that
-- describes the subscription endpoints for an Amazon Simple Notification
-- Service (Amazon SNS) topic.

module Stratosphere.ResourceProperties.SNSTopicSubscription where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for SNSTopicSubscription. See
-- 'snsTopicSubscription' for a more convenient constructor.
data SNSTopicSubscription =
  SNSTopicSubscription
  { _sNSTopicSubscriptionEndpoint :: Val Text
  , _sNSTopicSubscriptionProtocol :: SNSProtocol
  } deriving (Show, Generic)

instance ToJSON SNSTopicSubscription where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON SNSTopicSubscription where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'SNSTopicSubscription' containing required fields as
-- arguments.
snsTopicSubscription
  :: Val Text -- ^ 'snstsEndpoint'
  -> SNSProtocol -- ^ 'snstsProtocol'
  -> SNSTopicSubscription
snsTopicSubscription endpointarg protocolarg =
  SNSTopicSubscription
  { _sNSTopicSubscriptionEndpoint = endpointarg
  , _sNSTopicSubscriptionProtocol = protocolarg
  }

-- | The subscription's endpoint (format depends on the protocol). For more
-- information, see the Subscribe Endpoint parameter in the Amazon Simple
-- Notification Service API Reference.
snstsEndpoint :: Lens' SNSTopicSubscription (Val Text)
snstsEndpoint = lens _sNSTopicSubscriptionEndpoint (\s a -> s { _sNSTopicSubscriptionEndpoint = a })

-- | The subscription's protocol. For more information, see the Subscribe
-- Protocol parameter in the Amazon Simple Notification Service API Reference.
snstsProtocol :: Lens' SNSTopicSubscription SNSProtocol
snstsProtocol = lens _sNSTopicSubscriptionProtocol (\s a -> s { _sNSTopicSubscriptionProtocol = a })