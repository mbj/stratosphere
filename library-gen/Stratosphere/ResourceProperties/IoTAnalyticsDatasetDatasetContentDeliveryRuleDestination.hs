{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetIotEventsDestinationConfiguration
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetS3DestinationConfiguration

-- | Full data type definition for
-- IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination. See
-- 'ioTAnalyticsDatasetDatasetContentDeliveryRuleDestination' for a more
-- convenient constructor.
data IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination =
  IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination
  { _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationIotEventsDestinationConfiguration :: Maybe IoTAnalyticsDatasetIotEventsDestinationConfiguration
  , _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationS3DestinationConfiguration :: Maybe IoTAnalyticsDatasetS3DestinationConfiguration
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination where
  toJSON IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination{..} =
    object $
    catMaybes
    [ fmap (("IotEventsDestinationConfiguration",) . toJSON) _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationIotEventsDestinationConfiguration
    , fmap (("S3DestinationConfiguration",) . toJSON) _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationS3DestinationConfiguration
    ]

-- | Constructor for
-- 'IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination' containing
-- required fields as arguments.
ioTAnalyticsDatasetDatasetContentDeliveryRuleDestination
  :: IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination
ioTAnalyticsDatasetDatasetContentDeliveryRuleDestination  =
  IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination
  { _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationIotEventsDestinationConfiguration = Nothing
  , _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationS3DestinationConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-ioteventsdestinationconfiguration
itaddcdrdIotEventsDestinationConfiguration :: Lens' IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination (Maybe IoTAnalyticsDatasetIotEventsDestinationConfiguration)
itaddcdrdIotEventsDestinationConfiguration = lens _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationIotEventsDestinationConfiguration (\s a -> s { _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationIotEventsDestinationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-s3destinationconfiguration
itaddcdrdS3DestinationConfiguration :: Lens' IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination (Maybe IoTAnalyticsDatasetS3DestinationConfiguration)
itaddcdrdS3DestinationConfiguration = lens _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationS3DestinationConfiguration (\s a -> s { _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestinationS3DestinationConfiguration = a })
