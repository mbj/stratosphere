{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html

module Stratosphere.Resources.SNSTopic where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SNSTopicSubscription
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SNSTopic. See 'snsTopic' for a more
-- convenient constructor.
data SNSTopic =
  SNSTopic
  { _sNSTopicContentBasedDeduplication :: Maybe (Val Bool)
  , _sNSTopicDisplayName :: Maybe (Val Text)
  , _sNSTopicKmsMasterKeyId :: Maybe (Val Text)
  , _sNSTopicSubscription :: Maybe [SNSTopicSubscription]
  , _sNSTopicTags :: Maybe [Tag]
  , _sNSTopicTopicName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties SNSTopic where
  toResourceProperties SNSTopic{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SNS::Topic"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ContentBasedDeduplication",) . toJSON) _sNSTopicContentBasedDeduplication
        , fmap (("DisplayName",) . toJSON) _sNSTopicDisplayName
        , fmap (("KmsMasterKeyId",) . toJSON) _sNSTopicKmsMasterKeyId
        , fmap (("Subscription",) . toJSON) _sNSTopicSubscription
        , fmap (("Tags",) . toJSON) _sNSTopicTags
        , fmap (("TopicName",) . toJSON) _sNSTopicTopicName
        ]
    }

-- | Constructor for 'SNSTopic' containing required fields as arguments.
snsTopic
  :: SNSTopic
snsTopic  =
  SNSTopic
  { _sNSTopicContentBasedDeduplication = Nothing
  , _sNSTopicDisplayName = Nothing
  , _sNSTopicKmsMasterKeyId = Nothing
  , _sNSTopicSubscription = Nothing
  , _sNSTopicTags = Nothing
  , _sNSTopicTopicName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-contentbaseddeduplication
snstContentBasedDeduplication :: Lens' SNSTopic (Maybe (Val Bool))
snstContentBasedDeduplication = lens _sNSTopicContentBasedDeduplication (\s a -> s { _sNSTopicContentBasedDeduplication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-displayname
snstDisplayName :: Lens' SNSTopic (Maybe (Val Text))
snstDisplayName = lens _sNSTopicDisplayName (\s a -> s { _sNSTopicDisplayName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-kmsmasterkeyid
snstKmsMasterKeyId :: Lens' SNSTopic (Maybe (Val Text))
snstKmsMasterKeyId = lens _sNSTopicKmsMasterKeyId (\s a -> s { _sNSTopicKmsMasterKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-subscription
snstSubscription :: Lens' SNSTopic (Maybe [SNSTopicSubscription])
snstSubscription = lens _sNSTopicSubscription (\s a -> s { _sNSTopicSubscription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-tags
snstTags :: Lens' SNSTopic (Maybe [Tag])
snstTags = lens _sNSTopicTags (\s a -> s { _sNSTopicTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-topicname
snstTopicName :: Lens' SNSTopic (Maybe (Val Text))
snstTopicName = lens _sNSTopicTopicName (\s a -> s { _sNSTopicTopicName = a })
