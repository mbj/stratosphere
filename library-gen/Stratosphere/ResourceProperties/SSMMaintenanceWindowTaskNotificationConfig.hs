{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters-notificationconfig.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskNotificationConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for SSMMaintenanceWindowTaskNotificationConfig.
-- See 'ssmMaintenanceWindowTaskNotificationConfig' for a more convenient
-- constructor.
data SSMMaintenanceWindowTaskNotificationConfig =
  SSMMaintenanceWindowTaskNotificationConfig
  { _sSMMaintenanceWindowTaskNotificationConfigNotificationArn :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents :: Maybe (ValList Text)
  , _sSMMaintenanceWindowTaskNotificationConfigNotificationType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTaskNotificationConfig where
  toJSON SSMMaintenanceWindowTaskNotificationConfig{..} =
    object $
    catMaybes
    [ fmap (("NotificationArn",) . toJSON) _sSMMaintenanceWindowTaskNotificationConfigNotificationArn
    , fmap (("NotificationEvents",) . toJSON) _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents
    , fmap (("NotificationType",) . toJSON) _sSMMaintenanceWindowTaskNotificationConfigNotificationType
    ]

instance FromJSON SSMMaintenanceWindowTaskNotificationConfig where
  parseJSON (Object obj) =
    SSMMaintenanceWindowTaskNotificationConfig <$>
      (obj .:? "NotificationArn") <*>
      (obj .:? "NotificationEvents") <*>
      (obj .:? "NotificationType")
  parseJSON _ = mempty

-- | Constructor for 'SSMMaintenanceWindowTaskNotificationConfig' containing
-- required fields as arguments.
ssmMaintenanceWindowTaskNotificationConfig
  :: SSMMaintenanceWindowTaskNotificationConfig
ssmMaintenanceWindowTaskNotificationConfig  =
  SSMMaintenanceWindowTaskNotificationConfig
  { _sSMMaintenanceWindowTaskNotificationConfigNotificationArn = Nothing
  , _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents = Nothing
  , _sSMMaintenanceWindowTaskNotificationConfigNotificationType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters-notificationconfig.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters-notificationconfig-notificationarn
ssmmwtncNotificationArn :: Lens' SSMMaintenanceWindowTaskNotificationConfig (Maybe (Val Text))
ssmmwtncNotificationArn = lens _sSMMaintenanceWindowTaskNotificationConfigNotificationArn (\s a -> s { _sSMMaintenanceWindowTaskNotificationConfigNotificationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters-notificationconfig.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters-notificationconfig-notificationevents
ssmmwtncNotificationEvents :: Lens' SSMMaintenanceWindowTaskNotificationConfig (Maybe (ValList Text))
ssmmwtncNotificationEvents = lens _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents (\s a -> s { _sSMMaintenanceWindowTaskNotificationConfigNotificationEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters-notificationconfig.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters-notificationconfig-notificationtype
ssmmwtncNotificationType :: Lens' SSMMaintenanceWindowTaskNotificationConfig (Maybe (Val Text))
ssmmwtncNotificationType = lens _sSMMaintenanceWindowTaskNotificationConfigNotificationType (\s a -> s { _sSMMaintenanceWindowTaskNotificationConfigNotificationType = a })
