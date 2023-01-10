
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetIotEventsDestinationConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- IoTAnalyticsDatasetIotEventsDestinationConfiguration. See
-- 'ioTAnalyticsDatasetIotEventsDestinationConfiguration' for a more
-- convenient constructor.
data IoTAnalyticsDatasetIotEventsDestinationConfiguration =
  IoTAnalyticsDatasetIotEventsDestinationConfiguration
  { _ioTAnalyticsDatasetIotEventsDestinationConfigurationInputName :: Val Text
  , _ioTAnalyticsDatasetIotEventsDestinationConfigurationRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetIotEventsDestinationConfiguration where
  toJSON IoTAnalyticsDatasetIotEventsDestinationConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("InputName",) . toJSON) _ioTAnalyticsDatasetIotEventsDestinationConfigurationInputName
    , (Just . ("RoleArn",) . toJSON) _ioTAnalyticsDatasetIotEventsDestinationConfigurationRoleArn
    ]

-- | Constructor for 'IoTAnalyticsDatasetIotEventsDestinationConfiguration'
-- containing required fields as arguments.
ioTAnalyticsDatasetIotEventsDestinationConfiguration
  :: Val Text -- ^ 'itadiedcInputName'
  -> Val Text -- ^ 'itadiedcRoleArn'
  -> IoTAnalyticsDatasetIotEventsDestinationConfiguration
ioTAnalyticsDatasetIotEventsDestinationConfiguration inputNamearg roleArnarg =
  IoTAnalyticsDatasetIotEventsDestinationConfiguration
  { _ioTAnalyticsDatasetIotEventsDestinationConfigurationInputName = inputNamearg
  , _ioTAnalyticsDatasetIotEventsDestinationConfigurationRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html#cfn-iotanalytics-dataset-ioteventsdestinationconfiguration-inputname
itadiedcInputName :: Lens' IoTAnalyticsDatasetIotEventsDestinationConfiguration (Val Text)
itadiedcInputName = lens _ioTAnalyticsDatasetIotEventsDestinationConfigurationInputName (\s a -> s { _ioTAnalyticsDatasetIotEventsDestinationConfigurationInputName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html#cfn-iotanalytics-dataset-ioteventsdestinationconfiguration-rolearn
itadiedcRoleArn :: Lens' IoTAnalyticsDatasetIotEventsDestinationConfiguration (Val Text)
itadiedcRoleArn = lens _ioTAnalyticsDatasetIotEventsDestinationConfigurationRoleArn (\s a -> s { _ioTAnalyticsDatasetIotEventsDestinationConfigurationRoleArn = a })
