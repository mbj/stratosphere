{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineDeviceRegistryEnrich where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineDeviceRegistryEnrich.
-- See 'ioTAnalyticsPipelineDeviceRegistryEnrich' for a more convenient
-- constructor.
data IoTAnalyticsPipelineDeviceRegistryEnrich =
  IoTAnalyticsPipelineDeviceRegistryEnrich
  { _ioTAnalyticsPipelineDeviceRegistryEnrichAttribute :: Maybe (Val Text)
  , _ioTAnalyticsPipelineDeviceRegistryEnrichName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineDeviceRegistryEnrichNext :: Maybe (Val Text)
  , _ioTAnalyticsPipelineDeviceRegistryEnrichRoleArn :: Maybe (Val Text)
  , _ioTAnalyticsPipelineDeviceRegistryEnrichThingName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineDeviceRegistryEnrich where
  toJSON IoTAnalyticsPipelineDeviceRegistryEnrich{..} =
    object $
    catMaybes
    [ fmap (("Attribute",) . toJSON) _ioTAnalyticsPipelineDeviceRegistryEnrichAttribute
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineDeviceRegistryEnrichName
    , fmap (("Next",) . toJSON) _ioTAnalyticsPipelineDeviceRegistryEnrichNext
    , fmap (("RoleArn",) . toJSON) _ioTAnalyticsPipelineDeviceRegistryEnrichRoleArn
    , fmap (("ThingName",) . toJSON) _ioTAnalyticsPipelineDeviceRegistryEnrichThingName
    ]

-- | Constructor for 'IoTAnalyticsPipelineDeviceRegistryEnrich' containing
-- required fields as arguments.
ioTAnalyticsPipelineDeviceRegistryEnrich
  :: IoTAnalyticsPipelineDeviceRegistryEnrich
ioTAnalyticsPipelineDeviceRegistryEnrich  =
  IoTAnalyticsPipelineDeviceRegistryEnrich
  { _ioTAnalyticsPipelineDeviceRegistryEnrichAttribute = Nothing
  , _ioTAnalyticsPipelineDeviceRegistryEnrichName = Nothing
  , _ioTAnalyticsPipelineDeviceRegistryEnrichNext = Nothing
  , _ioTAnalyticsPipelineDeviceRegistryEnrichRoleArn = Nothing
  , _ioTAnalyticsPipelineDeviceRegistryEnrichThingName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-attribute
itapdreAttribute :: Lens' IoTAnalyticsPipelineDeviceRegistryEnrich (Maybe (Val Text))
itapdreAttribute = lens _ioTAnalyticsPipelineDeviceRegistryEnrichAttribute (\s a -> s { _ioTAnalyticsPipelineDeviceRegistryEnrichAttribute = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-name
itapdreName :: Lens' IoTAnalyticsPipelineDeviceRegistryEnrich (Maybe (Val Text))
itapdreName = lens _ioTAnalyticsPipelineDeviceRegistryEnrichName (\s a -> s { _ioTAnalyticsPipelineDeviceRegistryEnrichName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-next
itapdreNext :: Lens' IoTAnalyticsPipelineDeviceRegistryEnrich (Maybe (Val Text))
itapdreNext = lens _ioTAnalyticsPipelineDeviceRegistryEnrichNext (\s a -> s { _ioTAnalyticsPipelineDeviceRegistryEnrichNext = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-rolearn
itapdreRoleArn :: Lens' IoTAnalyticsPipelineDeviceRegistryEnrich (Maybe (Val Text))
itapdreRoleArn = lens _ioTAnalyticsPipelineDeviceRegistryEnrichRoleArn (\s a -> s { _ioTAnalyticsPipelineDeviceRegistryEnrichRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-thingname
itapdreThingName :: Lens' IoTAnalyticsPipelineDeviceRegistryEnrich (Maybe (Val Text))
itapdreThingName = lens _ioTAnalyticsPipelineDeviceRegistryEnrichThingName (\s a -> s { _ioTAnalyticsPipelineDeviceRegistryEnrichThingName = a })
