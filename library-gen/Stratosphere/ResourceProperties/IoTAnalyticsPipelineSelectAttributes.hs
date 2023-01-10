
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-selectattributes.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineSelectAttributes where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineSelectAttributes. See
-- 'ioTAnalyticsPipelineSelectAttributes' for a more convenient constructor.
data IoTAnalyticsPipelineSelectAttributes =
  IoTAnalyticsPipelineSelectAttributes
  { _ioTAnalyticsPipelineSelectAttributesAttributes :: Maybe (ValList Text)
  , _ioTAnalyticsPipelineSelectAttributesName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineSelectAttributesNext :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineSelectAttributes where
  toJSON IoTAnalyticsPipelineSelectAttributes{..} =
    object $
    catMaybes
    [ fmap (("Attributes",) . toJSON) _ioTAnalyticsPipelineSelectAttributesAttributes
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineSelectAttributesName
    , fmap (("Next",) . toJSON) _ioTAnalyticsPipelineSelectAttributesNext
    ]

-- | Constructor for 'IoTAnalyticsPipelineSelectAttributes' containing
-- required fields as arguments.
ioTAnalyticsPipelineSelectAttributes
  :: IoTAnalyticsPipelineSelectAttributes
ioTAnalyticsPipelineSelectAttributes  =
  IoTAnalyticsPipelineSelectAttributes
  { _ioTAnalyticsPipelineSelectAttributesAttributes = Nothing
  , _ioTAnalyticsPipelineSelectAttributesName = Nothing
  , _ioTAnalyticsPipelineSelectAttributesNext = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-selectattributes.html#cfn-iotanalytics-pipeline-selectattributes-attributes
itapsaAttributes :: Lens' IoTAnalyticsPipelineSelectAttributes (Maybe (ValList Text))
itapsaAttributes = lens _ioTAnalyticsPipelineSelectAttributesAttributes (\s a -> s { _ioTAnalyticsPipelineSelectAttributesAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-selectattributes.html#cfn-iotanalytics-pipeline-selectattributes-name
itapsaName :: Lens' IoTAnalyticsPipelineSelectAttributes (Maybe (Val Text))
itapsaName = lens _ioTAnalyticsPipelineSelectAttributesName (\s a -> s { _ioTAnalyticsPipelineSelectAttributesName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-selectattributes.html#cfn-iotanalytics-pipeline-selectattributes-next
itapsaNext :: Lens' IoTAnalyticsPipelineSelectAttributes (Maybe (Val Text))
itapsaNext = lens _ioTAnalyticsPipelineSelectAttributesNext (\s a -> s { _ioTAnalyticsPipelineSelectAttributesNext = a })
