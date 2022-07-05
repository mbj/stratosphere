{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-notificationchannel.html

module Stratosphere.Resources.FMSNotificationChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for FMSNotificationChannel. See
-- 'fmsNotificationChannel' for a more convenient constructor.
data FMSNotificationChannel =
  FMSNotificationChannel
  { _fMSNotificationChannelSnsRoleName :: Val Text
  , _fMSNotificationChannelSnsTopicArn :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties FMSNotificationChannel where
  toResourceProperties FMSNotificationChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::FMS::NotificationChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("SnsRoleName",) . toJSON) _fMSNotificationChannelSnsRoleName
        , (Just . ("SnsTopicArn",) . toJSON) _fMSNotificationChannelSnsTopicArn
        ]
    }

-- | Constructor for 'FMSNotificationChannel' containing required fields as
-- arguments.
fmsNotificationChannel
  :: Val Text -- ^ 'fmsncSnsRoleName'
  -> Val Text -- ^ 'fmsncSnsTopicArn'
  -> FMSNotificationChannel
fmsNotificationChannel snsRoleNamearg snsTopicArnarg =
  FMSNotificationChannel
  { _fMSNotificationChannelSnsRoleName = snsRoleNamearg
  , _fMSNotificationChannelSnsTopicArn = snsTopicArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-notificationchannel.html#cfn-fms-notificationchannel-snsrolename
fmsncSnsRoleName :: Lens' FMSNotificationChannel (Val Text)
fmsncSnsRoleName = lens _fMSNotificationChannelSnsRoleName (\s a -> s { _fMSNotificationChannelSnsRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-notificationchannel.html#cfn-fms-notificationchannel-snstopicarn
fmsncSnsTopicArn :: Lens' FMSNotificationChannel (Val Text)
fmsncSnsTopicArn = lens _fMSNotificationChannelSnsTopicArn (\s a -> s { _fMSNotificationChannelSnsTopicArn = a })
