{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html

module Stratosphere.Resources.RDSEventSubscription where

import Stratosphere.ResourceImports


-- | Full data type definition for RDSEventSubscription. See
-- 'rdsEventSubscription' for a more convenient constructor.
data RDSEventSubscription =
  RDSEventSubscription
  { _rDSEventSubscriptionEnabled :: Maybe (Val Bool)
  , _rDSEventSubscriptionEventCategories :: Maybe (ValList Text)
  , _rDSEventSubscriptionSnsTopicArn :: Val Text
  , _rDSEventSubscriptionSourceIds :: Maybe (ValList Text)
  , _rDSEventSubscriptionSourceType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties RDSEventSubscription where
  toResourceProperties RDSEventSubscription{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::RDS::EventSubscription"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Enabled",) . toJSON) _rDSEventSubscriptionEnabled
        , fmap (("EventCategories",) . toJSON) _rDSEventSubscriptionEventCategories
        , (Just . ("SnsTopicArn",) . toJSON) _rDSEventSubscriptionSnsTopicArn
        , fmap (("SourceIds",) . toJSON) _rDSEventSubscriptionSourceIds
        , fmap (("SourceType",) . toJSON) _rDSEventSubscriptionSourceType
        ]
    }

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
rdsesEnabled :: Lens' RDSEventSubscription (Maybe (Val Bool))
rdsesEnabled = lens _rDSEventSubscriptionEnabled (\s a -> s { _rDSEventSubscriptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-eventcategories
rdsesEventCategories :: Lens' RDSEventSubscription (Maybe (ValList Text))
rdsesEventCategories = lens _rDSEventSubscriptionEventCategories (\s a -> s { _rDSEventSubscriptionEventCategories = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-snstopicarn
rdsesSnsTopicArn :: Lens' RDSEventSubscription (Val Text)
rdsesSnsTopicArn = lens _rDSEventSubscriptionSnsTopicArn (\s a -> s { _rDSEventSubscriptionSnsTopicArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-sourceids
rdsesSourceIds :: Lens' RDSEventSubscription (Maybe (ValList Text))
rdsesSourceIds = lens _rDSEventSubscriptionSourceIds (\s a -> s { _rDSEventSubscriptionSourceIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-sourcetype
rdsesSourceType :: Lens' RDSEventSubscription (Maybe (Val Text))
rdsesSourceType = lens _rDSEventSubscriptionSourceType (\s a -> s { _rDSEventSubscriptionSourceType = a })
