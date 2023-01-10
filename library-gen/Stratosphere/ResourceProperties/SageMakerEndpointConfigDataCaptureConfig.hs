
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig.html

module Stratosphere.ResourceProperties.SageMakerEndpointConfigDataCaptureConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerEndpointConfigCaptureContentTypeHeader
import Stratosphere.ResourceProperties.SageMakerEndpointConfigCaptureOption

-- | Full data type definition for SageMakerEndpointConfigDataCaptureConfig.
-- See 'sageMakerEndpointConfigDataCaptureConfig' for a more convenient
-- constructor.
data SageMakerEndpointConfigDataCaptureConfig =
  SageMakerEndpointConfigDataCaptureConfig
  { _sageMakerEndpointConfigDataCaptureConfigCaptureContentTypeHeader :: Maybe SageMakerEndpointConfigCaptureContentTypeHeader
  , _sageMakerEndpointConfigDataCaptureConfigCaptureOptions :: [SageMakerEndpointConfigCaptureOption]
  , _sageMakerEndpointConfigDataCaptureConfigDestinationS3Uri :: Val Text
  , _sageMakerEndpointConfigDataCaptureConfigEnableCapture :: Maybe (Val Bool)
  , _sageMakerEndpointConfigDataCaptureConfigInitialSamplingPercentage :: Val Integer
  , _sageMakerEndpointConfigDataCaptureConfigKmsKeyId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerEndpointConfigDataCaptureConfig where
  toJSON SageMakerEndpointConfigDataCaptureConfig{..} =
    object $
    catMaybes
    [ fmap (("CaptureContentTypeHeader",) . toJSON) _sageMakerEndpointConfigDataCaptureConfigCaptureContentTypeHeader
    , (Just . ("CaptureOptions",) . toJSON) _sageMakerEndpointConfigDataCaptureConfigCaptureOptions
    , (Just . ("DestinationS3Uri",) . toJSON) _sageMakerEndpointConfigDataCaptureConfigDestinationS3Uri
    , fmap (("EnableCapture",) . toJSON) _sageMakerEndpointConfigDataCaptureConfigEnableCapture
    , (Just . ("InitialSamplingPercentage",) . toJSON) _sageMakerEndpointConfigDataCaptureConfigInitialSamplingPercentage
    , fmap (("KmsKeyId",) . toJSON) _sageMakerEndpointConfigDataCaptureConfigKmsKeyId
    ]

-- | Constructor for 'SageMakerEndpointConfigDataCaptureConfig' containing
-- required fields as arguments.
sageMakerEndpointConfigDataCaptureConfig
  :: [SageMakerEndpointConfigCaptureOption] -- ^ 'smecdccCaptureOptions'
  -> Val Text -- ^ 'smecdccDestinationS3Uri'
  -> Val Integer -- ^ 'smecdccInitialSamplingPercentage'
  -> SageMakerEndpointConfigDataCaptureConfig
sageMakerEndpointConfigDataCaptureConfig captureOptionsarg destinationS3Uriarg initialSamplingPercentagearg =
  SageMakerEndpointConfigDataCaptureConfig
  { _sageMakerEndpointConfigDataCaptureConfigCaptureContentTypeHeader = Nothing
  , _sageMakerEndpointConfigDataCaptureConfigCaptureOptions = captureOptionsarg
  , _sageMakerEndpointConfigDataCaptureConfigDestinationS3Uri = destinationS3Uriarg
  , _sageMakerEndpointConfigDataCaptureConfigEnableCapture = Nothing
  , _sageMakerEndpointConfigDataCaptureConfigInitialSamplingPercentage = initialSamplingPercentagearg
  , _sageMakerEndpointConfigDataCaptureConfigKmsKeyId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig.html#cfn-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader
smecdccCaptureContentTypeHeader :: Lens' SageMakerEndpointConfigDataCaptureConfig (Maybe SageMakerEndpointConfigCaptureContentTypeHeader)
smecdccCaptureContentTypeHeader = lens _sageMakerEndpointConfigDataCaptureConfigCaptureContentTypeHeader (\s a -> s { _sageMakerEndpointConfigDataCaptureConfigCaptureContentTypeHeader = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig.html#cfn-sagemaker-endpointconfig-datacaptureconfig-captureoptions
smecdccCaptureOptions :: Lens' SageMakerEndpointConfigDataCaptureConfig [SageMakerEndpointConfigCaptureOption]
smecdccCaptureOptions = lens _sageMakerEndpointConfigDataCaptureConfigCaptureOptions (\s a -> s { _sageMakerEndpointConfigDataCaptureConfigCaptureOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig.html#cfn-sagemaker-endpointconfig-datacaptureconfig-destinations3uri
smecdccDestinationS3Uri :: Lens' SageMakerEndpointConfigDataCaptureConfig (Val Text)
smecdccDestinationS3Uri = lens _sageMakerEndpointConfigDataCaptureConfigDestinationS3Uri (\s a -> s { _sageMakerEndpointConfigDataCaptureConfigDestinationS3Uri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig.html#cfn-sagemaker-endpointconfig-datacaptureconfig-enablecapture
smecdccEnableCapture :: Lens' SageMakerEndpointConfigDataCaptureConfig (Maybe (Val Bool))
smecdccEnableCapture = lens _sageMakerEndpointConfigDataCaptureConfigEnableCapture (\s a -> s { _sageMakerEndpointConfigDataCaptureConfigEnableCapture = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig.html#cfn-sagemaker-endpointconfig-datacaptureconfig-initialsamplingpercentage
smecdccInitialSamplingPercentage :: Lens' SageMakerEndpointConfigDataCaptureConfig (Val Integer)
smecdccInitialSamplingPercentage = lens _sageMakerEndpointConfigDataCaptureConfigInitialSamplingPercentage (\s a -> s { _sageMakerEndpointConfigDataCaptureConfigInitialSamplingPercentage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig.html#cfn-sagemaker-endpointconfig-datacaptureconfig-kmskeyid
smecdccKmsKeyId :: Lens' SageMakerEndpointConfigDataCaptureConfig (Maybe (Val Text))
smecdccKmsKeyId = lens _sageMakerEndpointConfigDataCaptureConfigKmsKeyId (\s a -> s { _sageMakerEndpointConfigDataCaptureConfigKmsKeyId = a })
