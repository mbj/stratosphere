{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineAddAttributes where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineAddAttributes. See
-- 'ioTAnalyticsPipelineAddAttributes' for a more convenient constructor.
data IoTAnalyticsPipelineAddAttributes =
  IoTAnalyticsPipelineAddAttributes
  { _ioTAnalyticsPipelineAddAttributesAttributes :: Maybe Object
  , _ioTAnalyticsPipelineAddAttributesName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineAddAttributesNext :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineAddAttributes where
  toJSON IoTAnalyticsPipelineAddAttributes{..} =
    object $
    catMaybes
    [ fmap (("Attributes",) . toJSON) _ioTAnalyticsPipelineAddAttributesAttributes
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineAddAttributesName
    , fmap (("Next",) . toJSON) _ioTAnalyticsPipelineAddAttributesNext
    ]

-- | Constructor for 'IoTAnalyticsPipelineAddAttributes' containing required
-- fields as arguments.
ioTAnalyticsPipelineAddAttributes
  :: IoTAnalyticsPipelineAddAttributes
ioTAnalyticsPipelineAddAttributes  =
  IoTAnalyticsPipelineAddAttributes
  { _ioTAnalyticsPipelineAddAttributesAttributes = Nothing
  , _ioTAnalyticsPipelineAddAttributesName = Nothing
  , _ioTAnalyticsPipelineAddAttributesNext = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html#cfn-iotanalytics-pipeline-addattributes-attributes
itapaaAttributes :: Lens' IoTAnalyticsPipelineAddAttributes (Maybe Object)
itapaaAttributes = lens _ioTAnalyticsPipelineAddAttributesAttributes (\s a -> s { _ioTAnalyticsPipelineAddAttributesAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html#cfn-iotanalytics-pipeline-addattributes-name
itapaaName :: Lens' IoTAnalyticsPipelineAddAttributes (Maybe (Val Text))
itapaaName = lens _ioTAnalyticsPipelineAddAttributesName (\s a -> s { _ioTAnalyticsPipelineAddAttributesName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html#cfn-iotanalytics-pipeline-addattributes-next
itapaaNext :: Lens' IoTAnalyticsPipelineAddAttributes (Maybe (Val Text))
itapaaNext = lens _ioTAnalyticsPipelineAddAttributesNext (\s a -> s { _ioTAnalyticsPipelineAddAttributesNext = a })
