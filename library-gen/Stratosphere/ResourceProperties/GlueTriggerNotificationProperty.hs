{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-notificationproperty.html

module Stratosphere.ResourceProperties.GlueTriggerNotificationProperty where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueTriggerNotificationProperty. See
-- 'glueTriggerNotificationProperty' for a more convenient constructor.
data GlueTriggerNotificationProperty =
  GlueTriggerNotificationProperty
  { _glueTriggerNotificationPropertyNotifyDelayAfter :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GlueTriggerNotificationProperty where
  toJSON GlueTriggerNotificationProperty{..} =
    object $
    catMaybes
    [ fmap (("NotifyDelayAfter",) . toJSON) _glueTriggerNotificationPropertyNotifyDelayAfter
    ]

-- | Constructor for 'GlueTriggerNotificationProperty' containing required
-- fields as arguments.
glueTriggerNotificationProperty
  :: GlueTriggerNotificationProperty
glueTriggerNotificationProperty  =
  GlueTriggerNotificationProperty
  { _glueTriggerNotificationPropertyNotifyDelayAfter = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-notificationproperty.html#cfn-glue-trigger-notificationproperty-notifydelayafter
gtnpNotifyDelayAfter :: Lens' GlueTriggerNotificationProperty (Maybe (Val Integer))
gtnpNotifyDelayAfter = lens _glueTriggerNotificationPropertyNotifyDelayAfter (\s a -> s { _glueTriggerNotificationPropertyNotifyDelayAfter = a })
