
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineRemoveAttributes where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineRemoveAttributes. See
-- 'ioTAnalyticsPipelineRemoveAttributes' for a more convenient constructor.
data IoTAnalyticsPipelineRemoveAttributes =
  IoTAnalyticsPipelineRemoveAttributes
  { _ioTAnalyticsPipelineRemoveAttributesAttributes :: Maybe (ValList Text)
  , _ioTAnalyticsPipelineRemoveAttributesName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineRemoveAttributesNext :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineRemoveAttributes where
  toJSON IoTAnalyticsPipelineRemoveAttributes{..} =
    object $
    catMaybes
    [ fmap (("Attributes",) . toJSON) _ioTAnalyticsPipelineRemoveAttributesAttributes
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineRemoveAttributesName
    , fmap (("Next",) . toJSON) _ioTAnalyticsPipelineRemoveAttributesNext
    ]

-- | Constructor for 'IoTAnalyticsPipelineRemoveAttributes' containing
-- required fields as arguments.
ioTAnalyticsPipelineRemoveAttributes
  :: IoTAnalyticsPipelineRemoveAttributes
ioTAnalyticsPipelineRemoveAttributes  =
  IoTAnalyticsPipelineRemoveAttributes
  { _ioTAnalyticsPipelineRemoveAttributesAttributes = Nothing
  , _ioTAnalyticsPipelineRemoveAttributesName = Nothing
  , _ioTAnalyticsPipelineRemoveAttributesNext = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html#cfn-iotanalytics-pipeline-removeattributes-attributes
itapraAttributes :: Lens' IoTAnalyticsPipelineRemoveAttributes (Maybe (ValList Text))
itapraAttributes = lens _ioTAnalyticsPipelineRemoveAttributesAttributes (\s a -> s { _ioTAnalyticsPipelineRemoveAttributesAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html#cfn-iotanalytics-pipeline-removeattributes-name
itapraName :: Lens' IoTAnalyticsPipelineRemoveAttributes (Maybe (Val Text))
itapraName = lens _ioTAnalyticsPipelineRemoveAttributesName (\s a -> s { _ioTAnalyticsPipelineRemoveAttributesName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html#cfn-iotanalytics-pipeline-removeattributes-next
itapraNext :: Lens' IoTAnalyticsPipelineRemoveAttributes (Maybe (Val Text))
itapraNext = lens _ioTAnalyticsPipelineRemoveAttributesNext (\s a -> s { _ioTAnalyticsPipelineRemoveAttributesNext = a })
