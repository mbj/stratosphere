{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html

module Stratosphere.Resources.IoTAnalyticsDataset where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetAction
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetDatasetContentDeliveryRule
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetRetentionPeriod
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetTrigger
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetVersioningConfiguration

-- | Full data type definition for IoTAnalyticsDataset. See
-- 'ioTAnalyticsDataset' for a more convenient constructor.
data IoTAnalyticsDataset =
  IoTAnalyticsDataset
  { _ioTAnalyticsDatasetActions :: [IoTAnalyticsDatasetAction]
  , _ioTAnalyticsDatasetContentDeliveryRules :: Maybe [IoTAnalyticsDatasetDatasetContentDeliveryRule]
  , _ioTAnalyticsDatasetDatasetName :: Maybe (Val Text)
  , _ioTAnalyticsDatasetRetentionPeriod :: Maybe IoTAnalyticsDatasetRetentionPeriod
  , _ioTAnalyticsDatasetTags :: Maybe [Tag]
  , _ioTAnalyticsDatasetTriggers :: Maybe [IoTAnalyticsDatasetTrigger]
  , _ioTAnalyticsDatasetVersioningConfiguration :: Maybe IoTAnalyticsDatasetVersioningConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties IoTAnalyticsDataset where
  toResourceProperties IoTAnalyticsDataset{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoTAnalytics::Dataset"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Actions",) . toJSON) _ioTAnalyticsDatasetActions
        , fmap (("ContentDeliveryRules",) . toJSON) _ioTAnalyticsDatasetContentDeliveryRules
        , fmap (("DatasetName",) . toJSON) _ioTAnalyticsDatasetDatasetName
        , fmap (("RetentionPeriod",) . toJSON) _ioTAnalyticsDatasetRetentionPeriod
        , fmap (("Tags",) . toJSON) _ioTAnalyticsDatasetTags
        , fmap (("Triggers",) . toJSON) _ioTAnalyticsDatasetTriggers
        , fmap (("VersioningConfiguration",) . toJSON) _ioTAnalyticsDatasetVersioningConfiguration
        ]
    }

-- | Constructor for 'IoTAnalyticsDataset' containing required fields as
-- arguments.
ioTAnalyticsDataset
  :: [IoTAnalyticsDatasetAction] -- ^ 'itadsActions'
  -> IoTAnalyticsDataset
ioTAnalyticsDataset actionsarg =
  IoTAnalyticsDataset
  { _ioTAnalyticsDatasetActions = actionsarg
  , _ioTAnalyticsDatasetContentDeliveryRules = Nothing
  , _ioTAnalyticsDatasetDatasetName = Nothing
  , _ioTAnalyticsDatasetRetentionPeriod = Nothing
  , _ioTAnalyticsDatasetTags = Nothing
  , _ioTAnalyticsDatasetTriggers = Nothing
  , _ioTAnalyticsDatasetVersioningConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-actions
itadsActions :: Lens' IoTAnalyticsDataset [IoTAnalyticsDatasetAction]
itadsActions = lens _ioTAnalyticsDatasetActions (\s a -> s { _ioTAnalyticsDatasetActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-contentdeliveryrules
itadsContentDeliveryRules :: Lens' IoTAnalyticsDataset (Maybe [IoTAnalyticsDatasetDatasetContentDeliveryRule])
itadsContentDeliveryRules = lens _ioTAnalyticsDatasetContentDeliveryRules (\s a -> s { _ioTAnalyticsDatasetContentDeliveryRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-datasetname
itadsDatasetName :: Lens' IoTAnalyticsDataset (Maybe (Val Text))
itadsDatasetName = lens _ioTAnalyticsDatasetDatasetName (\s a -> s { _ioTAnalyticsDatasetDatasetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-retentionperiod
itadsRetentionPeriod :: Lens' IoTAnalyticsDataset (Maybe IoTAnalyticsDatasetRetentionPeriod)
itadsRetentionPeriod = lens _ioTAnalyticsDatasetRetentionPeriod (\s a -> s { _ioTAnalyticsDatasetRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-tags
itadsTags :: Lens' IoTAnalyticsDataset (Maybe [Tag])
itadsTags = lens _ioTAnalyticsDatasetTags (\s a -> s { _ioTAnalyticsDatasetTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-triggers
itadsTriggers :: Lens' IoTAnalyticsDataset (Maybe [IoTAnalyticsDatasetTrigger])
itadsTriggers = lens _ioTAnalyticsDatasetTriggers (\s a -> s { _ioTAnalyticsDatasetTriggers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-versioningconfiguration
itadsVersioningConfiguration :: Lens' IoTAnalyticsDataset (Maybe IoTAnalyticsDatasetVersioningConfiguration)
itadsVersioningConfiguration = lens _ioTAnalyticsDatasetVersioningConfiguration (\s a -> s { _ioTAnalyticsDatasetVersioningConfiguration = a })
