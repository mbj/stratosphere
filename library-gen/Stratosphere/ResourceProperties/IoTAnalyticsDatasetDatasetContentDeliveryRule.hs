
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryrule.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetDatasetContentDeliveryRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination

-- | Full data type definition for
-- IoTAnalyticsDatasetDatasetContentDeliveryRule. See
-- 'ioTAnalyticsDatasetDatasetContentDeliveryRule' for a more convenient
-- constructor.
data IoTAnalyticsDatasetDatasetContentDeliveryRule =
  IoTAnalyticsDatasetDatasetContentDeliveryRule
  { _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestination :: IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination
  , _ioTAnalyticsDatasetDatasetContentDeliveryRuleEntryName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetDatasetContentDeliveryRule where
  toJSON IoTAnalyticsDatasetDatasetContentDeliveryRule{..} =
    object $
    catMaybes
    [ (Just . ("Destination",) . toJSON) _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestination
    , fmap (("EntryName",) . toJSON) _ioTAnalyticsDatasetDatasetContentDeliveryRuleEntryName
    ]

-- | Constructor for 'IoTAnalyticsDatasetDatasetContentDeliveryRule'
-- containing required fields as arguments.
ioTAnalyticsDatasetDatasetContentDeliveryRule
  :: IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination -- ^ 'itaddcdrDestination'
  -> IoTAnalyticsDatasetDatasetContentDeliveryRule
ioTAnalyticsDatasetDatasetContentDeliveryRule destinationarg =
  IoTAnalyticsDatasetDatasetContentDeliveryRule
  { _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestination = destinationarg
  , _ioTAnalyticsDatasetDatasetContentDeliveryRuleEntryName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryrule.html#cfn-iotanalytics-dataset-datasetcontentdeliveryrule-destination
itaddcdrDestination :: Lens' IoTAnalyticsDatasetDatasetContentDeliveryRule IoTAnalyticsDatasetDatasetContentDeliveryRuleDestination
itaddcdrDestination = lens _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestination (\s a -> s { _ioTAnalyticsDatasetDatasetContentDeliveryRuleDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryrule.html#cfn-iotanalytics-dataset-datasetcontentdeliveryrule-entryname
itaddcdrEntryName :: Lens' IoTAnalyticsDatasetDatasetContentDeliveryRule (Maybe (Val Text))
itaddcdrEntryName = lens _ioTAnalyticsDatasetDatasetContentDeliveryRuleEntryName (\s a -> s { _ioTAnalyticsDatasetDatasetContentDeliveryRuleEntryName = a })
