{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html

module Stratosphere.Resources.SNSSubscription where

import Stratosphere.ResourceImports
import Stratosphere.Types

-- | Full data type definition for SNSSubscription. See 'snsSubscription' for
-- a more convenient constructor.
data SNSSubscription =
  SNSSubscription
  { _sNSSubscriptionDeliveryPolicy :: Maybe Object
  , _sNSSubscriptionEndpoint :: Maybe (Val Text)
  , _sNSSubscriptionFilterPolicy :: Maybe Object
  , _sNSSubscriptionProtocol :: Maybe (Val SNSProtocol)
  , _sNSSubscriptionRawMessageDelivery :: Maybe (Val Bool)
  , _sNSSubscriptionRegion :: Maybe (Val Text)
  , _sNSSubscriptionTopicArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SNSSubscription where
  toJSON SNSSubscription{..} =
    object $
    catMaybes
    [ fmap (("DeliveryPolicy",) . toJSON) _sNSSubscriptionDeliveryPolicy
    , fmap (("Endpoint",) . toJSON) _sNSSubscriptionEndpoint
    , fmap (("FilterPolicy",) . toJSON) _sNSSubscriptionFilterPolicy
    , fmap (("Protocol",) . toJSON) _sNSSubscriptionProtocol
    , fmap (("RawMessageDelivery",) . toJSON . fmap Bool') _sNSSubscriptionRawMessageDelivery
    , fmap (("Region",) . toJSON) _sNSSubscriptionRegion
    , fmap (("TopicArn",) . toJSON) _sNSSubscriptionTopicArn
    ]

instance FromJSON SNSSubscription where
  parseJSON (Object obj) =
    SNSSubscription <$>
      (obj .:? "DeliveryPolicy") <*>
      (obj .:? "Endpoint") <*>
      (obj .:? "FilterPolicy") <*>
      (obj .:? "Protocol") <*>
      fmap (fmap (fmap unBool')) (obj .:? "RawMessageDelivery") <*>
      (obj .:? "Region") <*>
      (obj .:? "TopicArn")
  parseJSON _ = mempty

-- | Constructor for 'SNSSubscription' containing required fields as
-- arguments.
snsSubscription
  :: SNSSubscription
snsSubscription  =
  SNSSubscription
  { _sNSSubscriptionDeliveryPolicy = Nothing
  , _sNSSubscriptionEndpoint = Nothing
  , _sNSSubscriptionFilterPolicy = Nothing
  , _sNSSubscriptionProtocol = Nothing
  , _sNSSubscriptionRawMessageDelivery = Nothing
  , _sNSSubscriptionRegion = Nothing
  , _sNSSubscriptionTopicArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-subscription-deliverypolicy
snssDeliveryPolicy :: Lens' SNSSubscription (Maybe Object)
snssDeliveryPolicy = lens _sNSSubscriptionDeliveryPolicy (\s a -> s { _sNSSubscriptionDeliveryPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-endpoint
snssEndpoint :: Lens' SNSSubscription (Maybe (Val Text))
snssEndpoint = lens _sNSSubscriptionEndpoint (\s a -> s { _sNSSubscriptionEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-subscription-filterpolicy
snssFilterPolicy :: Lens' SNSSubscription (Maybe Object)
snssFilterPolicy = lens _sNSSubscriptionFilterPolicy (\s a -> s { _sNSSubscriptionFilterPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-protocol
snssProtocol :: Lens' SNSSubscription (Maybe (Val SNSProtocol))
snssProtocol = lens _sNSSubscriptionProtocol (\s a -> s { _sNSSubscriptionProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-subscription-rawmessagedelivery
snssRawMessageDelivery :: Lens' SNSSubscription (Maybe (Val Bool))
snssRawMessageDelivery = lens _sNSSubscriptionRawMessageDelivery (\s a -> s { _sNSSubscriptionRawMessageDelivery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-subscription-region
snssRegion :: Lens' SNSSubscription (Maybe (Val Text))
snssRegion = lens _sNSSubscriptionRegion (\s a -> s { _sNSSubscriptionRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#topicarn
snssTopicArn :: Lens' SNSSubscription (Maybe (Val Text))
snssTopicArn = lens _sNSSubscriptionTopicArn (\s a -> s { _sNSSubscriptionTopicArn = a })
