{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-cloudwatchdestination.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationCloudWatchDestination where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationDimensionConfiguration

-- | Full data type definition for
-- PinpointEmailConfigurationSetEventDestinationCloudWatchDestination. See
-- 'pinpointEmailConfigurationSetEventDestinationCloudWatchDestination' for
-- a more convenient constructor.
data PinpointEmailConfigurationSetEventDestinationCloudWatchDestination =
  PinpointEmailConfigurationSetEventDestinationCloudWatchDestination
  { _pinpointEmailConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations :: Maybe [PinpointEmailConfigurationSetEventDestinationDimensionConfiguration]
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetEventDestinationCloudWatchDestination where
  toJSON PinpointEmailConfigurationSetEventDestinationCloudWatchDestination{..} =
    object $
    catMaybes
    [ fmap (("DimensionConfigurations",) . toJSON) _pinpointEmailConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations
    ]

-- | Constructor for
-- 'PinpointEmailConfigurationSetEventDestinationCloudWatchDestination'
-- containing required fields as arguments.
pinpointEmailConfigurationSetEventDestinationCloudWatchDestination
  :: PinpointEmailConfigurationSetEventDestinationCloudWatchDestination
pinpointEmailConfigurationSetEventDestinationCloudWatchDestination  =
  PinpointEmailConfigurationSetEventDestinationCloudWatchDestination
  { _pinpointEmailConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-cloudwatchdestination.html#cfn-pinpointemail-configurationseteventdestination-cloudwatchdestination-dimensionconfigurations
pecsedcwdDimensionConfigurations :: Lens' PinpointEmailConfigurationSetEventDestinationCloudWatchDestination (Maybe [PinpointEmailConfigurationSetEventDestinationDimensionConfiguration])
pecsedcwdDimensionConfigurations = lens _pinpointEmailConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations (\s a -> s { _pinpointEmailConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations = a })
