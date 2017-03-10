{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html

module Stratosphere.Resources.RDSEventSubscription where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for RDSEventSubscription. See
-- 'rdsEventSubscription' for a more convenient constructor.
data RDSEventSubscription =
  RDSEventSubscription
  { _rDSEventSubscriptionEnabled :: Maybe (Val Bool')
  , _rDSEventSubscriptionEventCategories :: Maybe [Val Text]
  , _rDSEventSubscriptionSnsTopicArn :: Val Text
  , _rDSEventSubscriptionSourceIds :: Maybe [Val Text]
  , _rDSEventSubscriptionSourceType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RDSEventSubscription where
  toJSON RDSEventSubscription{..} =
    object $
    catMaybes
    [ ("Enabled" .=) <$> _rDSEventSubscriptionEnabled
    , ("EventCategories" .=) <$> _rDSEventSubscriptionEventCategories
    , Just ("SnsTopicArn" .= _rDSEventSubscriptionSnsTopicArn)
    , ("SourceIds" .=) <$> _rDSEventSubscriptionSourceIds
    , ("SourceType" .=) <$> _rDSEventSubscriptionSourceType
    ]

instance FromJSON RDSEventSubscription where
  parseJSON (Object obj) =
    RDSEventSubscription <$>
      obj .:? "Enabled" <*>
      obj .:? "EventCategories" <*>
      obj .: "SnsTopicArn" <*>
      obj .:? "SourceIds" <*>
      obj .:? "SourceType"
  parseJSON _ = mempty

-- | Constructor for 'RDSEventSubscription' containing required fields as
-- arguments.
rdsEventSubscription
  :: Val Text -- ^ 'rdsesSnsTopicArn'
  -> RDSEventSubscription
rdsEventSubscription snsTopicArnarg =
  RDSEventSubscription
  { _rDSEventSubscriptionEnabled = Nothing
  , _rDSEventSubscriptionEventCategories = Nothing
  , _rDSEventSubscriptionSnsTopicArn = snsTopicArnarg
  , _rDSEventSubscriptionSourceIds = Nothing
  , _rDSEventSubscriptionSourceType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-enabled
rdsesEnabled :: Lens' RDSEventSubscription (Maybe (Val Bool'))
rdsesEnabled = lens _rDSEventSubscriptionEnabled (\s a -> s { _rDSEventSubscriptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-eventcategories
rdsesEventCategories :: Lens' RDSEventSubscription (Maybe [Val Text])
rdsesEventCategories = lens _rDSEventSubscriptionEventCategories (\s a -> s { _rDSEventSubscriptionEventCategories = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-snstopicarn
rdsesSnsTopicArn :: Lens' RDSEventSubscription (Val Text)
rdsesSnsTopicArn = lens _rDSEventSubscriptionSnsTopicArn (\s a -> s { _rDSEventSubscriptionSnsTopicArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-sourceids
rdsesSourceIds :: Lens' RDSEventSubscription (Maybe [Val Text])
rdsesSourceIds = lens _rDSEventSubscriptionSourceIds (\s a -> s { _rDSEventSubscriptionSourceIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-sourcetype
rdsesSourceType :: Lens' RDSEventSubscription (Maybe (Val Text))
rdsesSourceType = lens _rDSEventSubscriptionSourceType (\s a -> s { _rDSEventSubscriptionSourceType = a })
