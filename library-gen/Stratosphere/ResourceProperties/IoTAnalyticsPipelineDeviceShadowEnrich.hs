{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineDeviceShadowEnrich where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineDeviceShadowEnrich. See
-- 'ioTAnalyticsPipelineDeviceShadowEnrich' for a more convenient
-- constructor.
data IoTAnalyticsPipelineDeviceShadowEnrich =
  IoTAnalyticsPipelineDeviceShadowEnrich
  { _ioTAnalyticsPipelineDeviceShadowEnrichAttribute :: Maybe (Val Text)
  , _ioTAnalyticsPipelineDeviceShadowEnrichName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineDeviceShadowEnrichNext :: Maybe (Val Text)
  , _ioTAnalyticsPipelineDeviceShadowEnrichRoleArn :: Maybe (Val Text)
  , _ioTAnalyticsPipelineDeviceShadowEnrichThingName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineDeviceShadowEnrich where
  toJSON IoTAnalyticsPipelineDeviceShadowEnrich{..} =
    object $
    catMaybes
    [ fmap (("Attribute",) . toJSON) _ioTAnalyticsPipelineDeviceShadowEnrichAttribute
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineDeviceShadowEnrichName
    , fmap (("Next",) . toJSON) _ioTAnalyticsPipelineDeviceShadowEnrichNext
    , fmap (("RoleArn",) . toJSON) _ioTAnalyticsPipelineDeviceShadowEnrichRoleArn
    , fmap (("ThingName",) . toJSON) _ioTAnalyticsPipelineDeviceShadowEnrichThingName
    ]

-- | Constructor for 'IoTAnalyticsPipelineDeviceShadowEnrich' containing
-- required fields as arguments.
ioTAnalyticsPipelineDeviceShadowEnrich
  :: IoTAnalyticsPipelineDeviceShadowEnrich
ioTAnalyticsPipelineDeviceShadowEnrich  =
  IoTAnalyticsPipelineDeviceShadowEnrich
  { _ioTAnalyticsPipelineDeviceShadowEnrichAttribute = Nothing
  , _ioTAnalyticsPipelineDeviceShadowEnrichName = Nothing
  , _ioTAnalyticsPipelineDeviceShadowEnrichNext = Nothing
  , _ioTAnalyticsPipelineDeviceShadowEnrichRoleArn = Nothing
  , _ioTAnalyticsPipelineDeviceShadowEnrichThingName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-attribute
itapdseAttribute :: Lens' IoTAnalyticsPipelineDeviceShadowEnrich (Maybe (Val Text))
itapdseAttribute = lens _ioTAnalyticsPipelineDeviceShadowEnrichAttribute (\s a -> s { _ioTAnalyticsPipelineDeviceShadowEnrichAttribute = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-name
itapdseName :: Lens' IoTAnalyticsPipelineDeviceShadowEnrich (Maybe (Val Text))
itapdseName = lens _ioTAnalyticsPipelineDeviceShadowEnrichName (\s a -> s { _ioTAnalyticsPipelineDeviceShadowEnrichName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-next
itapdseNext :: Lens' IoTAnalyticsPipelineDeviceShadowEnrich (Maybe (Val Text))
itapdseNext = lens _ioTAnalyticsPipelineDeviceShadowEnrichNext (\s a -> s { _ioTAnalyticsPipelineDeviceShadowEnrichNext = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-rolearn
itapdseRoleArn :: Lens' IoTAnalyticsPipelineDeviceShadowEnrich (Maybe (Val Text))
itapdseRoleArn = lens _ioTAnalyticsPipelineDeviceShadowEnrichRoleArn (\s a -> s { _ioTAnalyticsPipelineDeviceShadowEnrichRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-thingname
itapdseThingName :: Lens' IoTAnalyticsPipelineDeviceShadowEnrich (Maybe (Val Text))
itapdseThingName = lens _ioTAnalyticsPipelineDeviceShadowEnrichThingName (\s a -> s { _ioTAnalyticsPipelineDeviceShadowEnrichThingName = a })
