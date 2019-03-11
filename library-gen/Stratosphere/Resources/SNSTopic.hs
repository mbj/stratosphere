{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html

module Stratosphere.Resources.SNSTopic where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SNSTopicSubscription

-- | Full data type definition for SNSTopic. See 'snsTopic' for a more
-- convenient constructor.
data SNSTopic =
  SNSTopic
  { _sNSTopicDisplayName :: Maybe (Val Text)
  , _sNSTopicKmsMasterKeyId :: Maybe (Val Text)
  , _sNSTopicSubscription :: Maybe [SNSTopicSubscription]
  , _sNSTopicTopicName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties SNSTopic where
  toResourceProperties SNSTopic{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SNS::Topic"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("DisplayName",) . toJSON) _sNSTopicDisplayName
        , fmap (("KmsMasterKeyId",) . toJSON) _sNSTopicKmsMasterKeyId
        , fmap (("Subscription",) . toJSON) _sNSTopicSubscription
        , fmap (("TopicName",) . toJSON) _sNSTopicTopicName
        ]
    }

-- | Constructor for 'SNSTopic' containing required fields as arguments.
snsTopic
  :: SNSTopic
snsTopic  =
  SNSTopic
  { _sNSTopicDisplayName = Nothing
  , _sNSTopicKmsMasterKeyId = Nothing
  , _sNSTopicSubscription = Nothing
  , _sNSTopicTopicName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-displayname
snstDisplayName :: Lens' SNSTopic (Maybe (Val Text))
snstDisplayName = lens _sNSTopicDisplayName (\s a -> s { _sNSTopicDisplayName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-kmsmasterkeyid
snstKmsMasterKeyId :: Lens' SNSTopic (Maybe (Val Text))
snstKmsMasterKeyId = lens _sNSTopicKmsMasterKeyId (\s a -> s { _sNSTopicKmsMasterKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-subscription
snstSubscription :: Lens' SNSTopic (Maybe [SNSTopicSubscription])
snstSubscription = lens _sNSTopicSubscription (\s a -> s { _sNSTopicSubscription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-topicname
snstTopicName :: Lens' SNSTopic (Maybe (Val Text))
snstTopicName = lens _sNSTopicTopicName (\s a -> s { _sNSTopicTopicName = a })
