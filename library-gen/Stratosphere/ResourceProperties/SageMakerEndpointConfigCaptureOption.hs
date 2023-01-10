
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-captureoption.html

module Stratosphere.ResourceProperties.SageMakerEndpointConfigCaptureOption where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerEndpointConfigCaptureOption. See
-- 'sageMakerEndpointConfigCaptureOption' for a more convenient constructor.
data SageMakerEndpointConfigCaptureOption =
  SageMakerEndpointConfigCaptureOption
  { _sageMakerEndpointConfigCaptureOptionCaptureMode :: Val Text
  } deriving (Show, Eq)

instance ToJSON SageMakerEndpointConfigCaptureOption where
  toJSON SageMakerEndpointConfigCaptureOption{..} =
    object $
    catMaybes
    [ (Just . ("CaptureMode",) . toJSON) _sageMakerEndpointConfigCaptureOptionCaptureMode
    ]

-- | Constructor for 'SageMakerEndpointConfigCaptureOption' containing
-- required fields as arguments.
sageMakerEndpointConfigCaptureOption
  :: Val Text -- ^ 'smeccoCaptureMode'
  -> SageMakerEndpointConfigCaptureOption
sageMakerEndpointConfigCaptureOption captureModearg =
  SageMakerEndpointConfigCaptureOption
  { _sageMakerEndpointConfigCaptureOptionCaptureMode = captureModearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-captureoption.html#cfn-sagemaker-endpointconfig-captureoption-capturemode
smeccoCaptureMode :: Lens' SageMakerEndpointConfigCaptureOption (Val Text)
smeccoCaptureMode = lens _sageMakerEndpointConfigCaptureOptionCaptureMode (\s a -> s { _sageMakerEndpointConfigCaptureOptionCaptureMode = a })
