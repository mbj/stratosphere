
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html

module Stratosphere.ResourceProperties.SNSTopicSubscription where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.Types

-- | Full data type definition for SNSTopicSubscription. See
-- 'snsTopicSubscription' for a more convenient constructor.
data SNSTopicSubscription =
  SNSTopicSubscription
  { _sNSTopicSubscriptionEndpoint :: Val Text
  , _sNSTopicSubscriptionProtocol :: Val SNSProtocol
  } deriving (Show, Eq)

instance ToJSON SNSTopicSubscription where
  toJSON SNSTopicSubscription{..} =
    object $
    catMaybes
    [ (Just . ("Endpoint",) . toJSON) _sNSTopicSubscriptionEndpoint
    , (Just . ("Protocol",) . toJSON) _sNSTopicSubscriptionProtocol
    ]

-- | Constructor for 'SNSTopicSubscription' containing required fields as
-- arguments.
snsTopicSubscription
  :: Val Text -- ^ 'snstsEndpoint'
  -> Val SNSProtocol -- ^ 'snstsProtocol'
  -> SNSTopicSubscription
snsTopicSubscription endpointarg protocolarg =
  SNSTopicSubscription
  { _sNSTopicSubscriptionEndpoint = endpointarg
  , _sNSTopicSubscriptionProtocol = protocolarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html#cfn-sns-topic-subscription-endpoint
snstsEndpoint :: Lens' SNSTopicSubscription (Val Text)
snstsEndpoint = lens _sNSTopicSubscriptionEndpoint (\s a -> s { _sNSTopicSubscriptionEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html#cfn-sns-topic-subscription-protocol
snstsProtocol :: Lens' SNSTopicSubscription (Val SNSProtocol)
snstsProtocol = lens _sNSTopicSubscriptionProtocol (\s a -> s { _sNSTopicSubscriptionProtocol = a })
