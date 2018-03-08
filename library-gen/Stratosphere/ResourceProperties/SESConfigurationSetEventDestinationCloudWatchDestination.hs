{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html

module Stratosphere.ResourceProperties.SESConfigurationSetEventDestinationCloudWatchDestination where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SESConfigurationSetEventDestinationDimensionConfiguration

-- | Full data type definition for
-- SESConfigurationSetEventDestinationCloudWatchDestination. See
-- 'sesConfigurationSetEventDestinationCloudWatchDestination' for a more
-- convenient constructor.
data SESConfigurationSetEventDestinationCloudWatchDestination =
  SESConfigurationSetEventDestinationCloudWatchDestination
  { _sESConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations :: Maybe [SESConfigurationSetEventDestinationDimensionConfiguration]
  } deriving (Show, Eq)

instance ToJSON SESConfigurationSetEventDestinationCloudWatchDestination where
  toJSON SESConfigurationSetEventDestinationCloudWatchDestination{..} =
    object $
    catMaybes
    [ fmap (("DimensionConfigurations",) . toJSON) _sESConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations
    ]

instance FromJSON SESConfigurationSetEventDestinationCloudWatchDestination where
  parseJSON (Object obj) =
    SESConfigurationSetEventDestinationCloudWatchDestination <$>
      (obj .:? "DimensionConfigurations")
  parseJSON _ = mempty

-- | Constructor for
-- 'SESConfigurationSetEventDestinationCloudWatchDestination' containing
-- required fields as arguments.
sesConfigurationSetEventDestinationCloudWatchDestination
  :: SESConfigurationSetEventDestinationCloudWatchDestination
sesConfigurationSetEventDestinationCloudWatchDestination  =
  SESConfigurationSetEventDestinationCloudWatchDestination
  { _sESConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html#cfn-ses-configurationseteventdestination-cloudwatchdestination-dimensionconfigurations
sescsedcwdDimensionConfigurations :: Lens' SESConfigurationSetEventDestinationCloudWatchDestination (Maybe [SESConfigurationSetEventDestinationDimensionConfiguration])
sescsedcwdDimensionConfigurations = lens _sESConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations (\s a -> s { _sESConfigurationSetEventDestinationCloudWatchDestinationDimensionConfigurations = a })
