{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineActivity where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineAddAttributes
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineChannel
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineDatastore
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineDeviceRegistryEnrich
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineDeviceShadowEnrich
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineFilter
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineLambda
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineMath
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineRemoveAttributes
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineSelectAttributes

-- | Full data type definition for IoTAnalyticsPipelineActivity. See
-- 'ioTAnalyticsPipelineActivity' for a more convenient constructor.
data IoTAnalyticsPipelineActivity =
  IoTAnalyticsPipelineActivity
  { _ioTAnalyticsPipelineActivityAddAttributes :: Maybe IoTAnalyticsPipelineAddAttributes
  , _ioTAnalyticsPipelineActivityChannel :: Maybe IoTAnalyticsPipelineChannel
  , _ioTAnalyticsPipelineActivityDatastore :: Maybe IoTAnalyticsPipelineDatastore
  , _ioTAnalyticsPipelineActivityDeviceRegistryEnrich :: Maybe IoTAnalyticsPipelineDeviceRegistryEnrich
  , _ioTAnalyticsPipelineActivityDeviceShadowEnrich :: Maybe IoTAnalyticsPipelineDeviceShadowEnrich
  , _ioTAnalyticsPipelineActivityFilter :: Maybe IoTAnalyticsPipelineFilter
  , _ioTAnalyticsPipelineActivityLambda :: Maybe IoTAnalyticsPipelineLambda
  , _ioTAnalyticsPipelineActivityMath :: Maybe IoTAnalyticsPipelineMath
  , _ioTAnalyticsPipelineActivityRemoveAttributes :: Maybe IoTAnalyticsPipelineRemoveAttributes
  , _ioTAnalyticsPipelineActivitySelectAttributes :: Maybe IoTAnalyticsPipelineSelectAttributes
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineActivity where
  toJSON IoTAnalyticsPipelineActivity{..} =
    object $
    catMaybes
    [ fmap (("AddAttributes",) . toJSON) _ioTAnalyticsPipelineActivityAddAttributes
    , fmap (("Channel",) . toJSON) _ioTAnalyticsPipelineActivityChannel
    , fmap (("Datastore",) . toJSON) _ioTAnalyticsPipelineActivityDatastore
    , fmap (("DeviceRegistryEnrich",) . toJSON) _ioTAnalyticsPipelineActivityDeviceRegistryEnrich
    , fmap (("DeviceShadowEnrich",) . toJSON) _ioTAnalyticsPipelineActivityDeviceShadowEnrich
    , fmap (("Filter",) . toJSON) _ioTAnalyticsPipelineActivityFilter
    , fmap (("Lambda",) . toJSON) _ioTAnalyticsPipelineActivityLambda
    , fmap (("Math",) . toJSON) _ioTAnalyticsPipelineActivityMath
    , fmap (("RemoveAttributes",) . toJSON) _ioTAnalyticsPipelineActivityRemoveAttributes
    , fmap (("SelectAttributes",) . toJSON) _ioTAnalyticsPipelineActivitySelectAttributes
    ]

-- | Constructor for 'IoTAnalyticsPipelineActivity' containing required fields
-- as arguments.
ioTAnalyticsPipelineActivity
  :: IoTAnalyticsPipelineActivity
ioTAnalyticsPipelineActivity  =
  IoTAnalyticsPipelineActivity
  { _ioTAnalyticsPipelineActivityAddAttributes = Nothing
  , _ioTAnalyticsPipelineActivityChannel = Nothing
  , _ioTAnalyticsPipelineActivityDatastore = Nothing
  , _ioTAnalyticsPipelineActivityDeviceRegistryEnrich = Nothing
  , _ioTAnalyticsPipelineActivityDeviceShadowEnrich = Nothing
  , _ioTAnalyticsPipelineActivityFilter = Nothing
  , _ioTAnalyticsPipelineActivityLambda = Nothing
  , _ioTAnalyticsPipelineActivityMath = Nothing
  , _ioTAnalyticsPipelineActivityRemoveAttributes = Nothing
  , _ioTAnalyticsPipelineActivitySelectAttributes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-addattributes
itapaAddAttributes :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineAddAttributes)
itapaAddAttributes = lens _ioTAnalyticsPipelineActivityAddAttributes (\s a -> s { _ioTAnalyticsPipelineActivityAddAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-channel
itapaChannel :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineChannel)
itapaChannel = lens _ioTAnalyticsPipelineActivityChannel (\s a -> s { _ioTAnalyticsPipelineActivityChannel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-datastore
itapaDatastore :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineDatastore)
itapaDatastore = lens _ioTAnalyticsPipelineActivityDatastore (\s a -> s { _ioTAnalyticsPipelineActivityDatastore = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceregistryenrich
itapaDeviceRegistryEnrich :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineDeviceRegistryEnrich)
itapaDeviceRegistryEnrich = lens _ioTAnalyticsPipelineActivityDeviceRegistryEnrich (\s a -> s { _ioTAnalyticsPipelineActivityDeviceRegistryEnrich = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceshadowenrich
itapaDeviceShadowEnrich :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineDeviceShadowEnrich)
itapaDeviceShadowEnrich = lens _ioTAnalyticsPipelineActivityDeviceShadowEnrich (\s a -> s { _ioTAnalyticsPipelineActivityDeviceShadowEnrich = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-filter
itapaFilter :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineFilter)
itapaFilter = lens _ioTAnalyticsPipelineActivityFilter (\s a -> s { _ioTAnalyticsPipelineActivityFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-lambda
itapaLambda :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineLambda)
itapaLambda = lens _ioTAnalyticsPipelineActivityLambda (\s a -> s { _ioTAnalyticsPipelineActivityLambda = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-math
itapaMath :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineMath)
itapaMath = lens _ioTAnalyticsPipelineActivityMath (\s a -> s { _ioTAnalyticsPipelineActivityMath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-removeattributes
itapaRemoveAttributes :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineRemoveAttributes)
itapaRemoveAttributes = lens _ioTAnalyticsPipelineActivityRemoveAttributes (\s a -> s { _ioTAnalyticsPipelineActivityRemoveAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-selectattributes
itapaSelectAttributes :: Lens' IoTAnalyticsPipelineActivity (Maybe IoTAnalyticsPipelineSelectAttributes)
itapaSelectAttributes = lens _ioTAnalyticsPipelineActivitySelectAttributes (\s a -> s { _ioTAnalyticsPipelineActivitySelectAttributes = a })
