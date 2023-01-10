
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetContainerAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetResourceConfiguration
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetVariable

-- | Full data type definition for IoTAnalyticsDatasetContainerAction. See
-- 'ioTAnalyticsDatasetContainerAction' for a more convenient constructor.
data IoTAnalyticsDatasetContainerAction =
  IoTAnalyticsDatasetContainerAction
  { _ioTAnalyticsDatasetContainerActionExecutionRoleArn :: Val Text
  , _ioTAnalyticsDatasetContainerActionImage :: Val Text
  , _ioTAnalyticsDatasetContainerActionResourceConfiguration :: IoTAnalyticsDatasetResourceConfiguration
  , _ioTAnalyticsDatasetContainerActionVariables :: Maybe [IoTAnalyticsDatasetVariable]
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetContainerAction where
  toJSON IoTAnalyticsDatasetContainerAction{..} =
    object $
    catMaybes
    [ (Just . ("ExecutionRoleArn",) . toJSON) _ioTAnalyticsDatasetContainerActionExecutionRoleArn
    , (Just . ("Image",) . toJSON) _ioTAnalyticsDatasetContainerActionImage
    , (Just . ("ResourceConfiguration",) . toJSON) _ioTAnalyticsDatasetContainerActionResourceConfiguration
    , fmap (("Variables",) . toJSON) _ioTAnalyticsDatasetContainerActionVariables
    ]

-- | Constructor for 'IoTAnalyticsDatasetContainerAction' containing required
-- fields as arguments.
ioTAnalyticsDatasetContainerAction
  :: Val Text -- ^ 'itadcaExecutionRoleArn'
  -> Val Text -- ^ 'itadcaImage'
  -> IoTAnalyticsDatasetResourceConfiguration -- ^ 'itadcaResourceConfiguration'
  -> IoTAnalyticsDatasetContainerAction
ioTAnalyticsDatasetContainerAction executionRoleArnarg imagearg resourceConfigurationarg =
  IoTAnalyticsDatasetContainerAction
  { _ioTAnalyticsDatasetContainerActionExecutionRoleArn = executionRoleArnarg
  , _ioTAnalyticsDatasetContainerActionImage = imagearg
  , _ioTAnalyticsDatasetContainerActionResourceConfiguration = resourceConfigurationarg
  , _ioTAnalyticsDatasetContainerActionVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-executionrolearn
itadcaExecutionRoleArn :: Lens' IoTAnalyticsDatasetContainerAction (Val Text)
itadcaExecutionRoleArn = lens _ioTAnalyticsDatasetContainerActionExecutionRoleArn (\s a -> s { _ioTAnalyticsDatasetContainerActionExecutionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-image
itadcaImage :: Lens' IoTAnalyticsDatasetContainerAction (Val Text)
itadcaImage = lens _ioTAnalyticsDatasetContainerActionImage (\s a -> s { _ioTAnalyticsDatasetContainerActionImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-resourceconfiguration
itadcaResourceConfiguration :: Lens' IoTAnalyticsDatasetContainerAction IoTAnalyticsDatasetResourceConfiguration
itadcaResourceConfiguration = lens _ioTAnalyticsDatasetContainerActionResourceConfiguration (\s a -> s { _ioTAnalyticsDatasetContainerActionResourceConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-variables
itadcaVariables :: Lens' IoTAnalyticsDatasetContainerAction (Maybe [IoTAnalyticsDatasetVariable])
itadcaVariables = lens _ioTAnalyticsDatasetContainerActionVariables (\s a -> s { _ioTAnalyticsDatasetContainerActionVariables = a })
