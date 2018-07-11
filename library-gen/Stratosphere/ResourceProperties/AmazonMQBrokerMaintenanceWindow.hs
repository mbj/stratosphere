{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-maintenancewindow.html

module Stratosphere.ResourceProperties.AmazonMQBrokerMaintenanceWindow where

import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQBrokerMaintenanceWindow. See
-- 'amazonMQBrokerMaintenanceWindow' for a more convenient constructor.
data AmazonMQBrokerMaintenanceWindow =
  AmazonMQBrokerMaintenanceWindow
  { _amazonMQBrokerMaintenanceWindowDayOfWeek :: Val Text
  , _amazonMQBrokerMaintenanceWindowTimeOfDay :: Val Text
  , _amazonMQBrokerMaintenanceWindowTimeZone :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerMaintenanceWindow where
  toJSON AmazonMQBrokerMaintenanceWindow{..} =
    object $
    catMaybes
    [ (Just . ("DayOfWeek",) . toJSON) _amazonMQBrokerMaintenanceWindowDayOfWeek
    , (Just . ("TimeOfDay",) . toJSON) _amazonMQBrokerMaintenanceWindowTimeOfDay
    , (Just . ("TimeZone",) . toJSON) _amazonMQBrokerMaintenanceWindowTimeZone
    ]

instance FromJSON AmazonMQBrokerMaintenanceWindow where
  parseJSON (Object obj) =
    AmazonMQBrokerMaintenanceWindow <$>
      (obj .: "DayOfWeek") <*>
      (obj .: "TimeOfDay") <*>
      (obj .: "TimeZone")
  parseJSON _ = mempty

-- | Constructor for 'AmazonMQBrokerMaintenanceWindow' containing required
-- fields as arguments.
amazonMQBrokerMaintenanceWindow
  :: Val Text -- ^ 'amqbmwDayOfWeek'
  -> Val Text -- ^ 'amqbmwTimeOfDay'
  -> Val Text -- ^ 'amqbmwTimeZone'
  -> AmazonMQBrokerMaintenanceWindow
amazonMQBrokerMaintenanceWindow dayOfWeekarg timeOfDayarg timeZonearg =
  AmazonMQBrokerMaintenanceWindow
  { _amazonMQBrokerMaintenanceWindowDayOfWeek = dayOfWeekarg
  , _amazonMQBrokerMaintenanceWindowTimeOfDay = timeOfDayarg
  , _amazonMQBrokerMaintenanceWindowTimeZone = timeZonearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-maintenancewindow.html#cfn-amazonmq-broker-maintenancewindow-dayofweek
amqbmwDayOfWeek :: Lens' AmazonMQBrokerMaintenanceWindow (Val Text)
amqbmwDayOfWeek = lens _amazonMQBrokerMaintenanceWindowDayOfWeek (\s a -> s { _amazonMQBrokerMaintenanceWindowDayOfWeek = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-maintenancewindow.html#cfn-amazonmq-broker-maintenancewindow-timeofday
amqbmwTimeOfDay :: Lens' AmazonMQBrokerMaintenanceWindow (Val Text)
amqbmwTimeOfDay = lens _amazonMQBrokerMaintenanceWindowTimeOfDay (\s a -> s { _amazonMQBrokerMaintenanceWindowTimeOfDay = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-maintenancewindow.html#cfn-amazonmq-broker-maintenancewindow-timezone
amqbmwTimeZone :: Lens' AmazonMQBrokerMaintenanceWindow (Val Text)
amqbmwTimeZone = lens _amazonMQBrokerMaintenanceWindowTimeZone (\s a -> s { _amazonMQBrokerMaintenanceWindowTimeZone = a })
