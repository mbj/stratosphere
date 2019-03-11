{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskNotificationConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMMaintenanceWindowTaskNotificationConfig.
-- See 'ssmMaintenanceWindowTaskNotificationConfig' for a more convenient
-- constructor.
data SSMMaintenanceWindowTaskNotificationConfig =
  SSMMaintenanceWindowTaskNotificationConfig
  { _sSMMaintenanceWindowTaskNotificationConfigNotificationArn :: Val Text
  , _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents :: Maybe (ValList Text)
  , _sSMMaintenanceWindowTaskNotificationConfigNotificationType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTaskNotificationConfig where
  toJSON SSMMaintenanceWindowTaskNotificationConfig{..} =
    object $
    catMaybes
    [ (Just . ("NotificationArn",) . toJSON) _sSMMaintenanceWindowTaskNotificationConfigNotificationArn
    , fmap (("NotificationEvents",) . toJSON) _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents
    , fmap (("NotificationType",) . toJSON) _sSMMaintenanceWindowTaskNotificationConfigNotificationType
    ]

-- | Constructor for 'SSMMaintenanceWindowTaskNotificationConfig' containing
-- required fields as arguments.
ssmMaintenanceWindowTaskNotificationConfig
  :: Val Text -- ^ 'ssmmwtncNotificationArn'
  -> SSMMaintenanceWindowTaskNotificationConfig
ssmMaintenanceWindowTaskNotificationConfig notificationArnarg =
  SSMMaintenanceWindowTaskNotificationConfig
  { _sSMMaintenanceWindowTaskNotificationConfigNotificationArn = notificationArnarg
  , _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents = Nothing
  , _sSMMaintenanceWindowTaskNotificationConfigNotificationType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationarn
ssmmwtncNotificationArn :: Lens' SSMMaintenanceWindowTaskNotificationConfig (Val Text)
ssmmwtncNotificationArn = lens _sSMMaintenanceWindowTaskNotificationConfigNotificationArn (\s a -> s { _sSMMaintenanceWindowTaskNotificationConfigNotificationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationevents
ssmmwtncNotificationEvents :: Lens' SSMMaintenanceWindowTaskNotificationConfig (Maybe (ValList Text))
ssmmwtncNotificationEvents = lens _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents (\s a -> s { _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationtype
ssmmwtncNotificationType :: Lens' SSMMaintenanceWindowTaskNotificationConfig (Maybe (Val Text))
ssmmwtncNotificationType = lens _sSMMaintenanceWindowTaskNotificationConfigNotificationType (\s a -> s { _sSMMaintenanceWindowTaskNotificationConfigNotificationType = a })
