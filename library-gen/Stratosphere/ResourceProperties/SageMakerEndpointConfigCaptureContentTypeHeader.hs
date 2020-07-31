{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader.html

module Stratosphere.ResourceProperties.SageMakerEndpointConfigCaptureContentTypeHeader where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- SageMakerEndpointConfigCaptureContentTypeHeader. See
-- 'sageMakerEndpointConfigCaptureContentTypeHeader' for a more convenient
-- constructor.
data SageMakerEndpointConfigCaptureContentTypeHeader =
  SageMakerEndpointConfigCaptureContentTypeHeader
  { _sageMakerEndpointConfigCaptureContentTypeHeaderCsvContentTypes :: Maybe (ValList Text)
  , _sageMakerEndpointConfigCaptureContentTypeHeaderJsonContentTypes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerEndpointConfigCaptureContentTypeHeader where
  toJSON SageMakerEndpointConfigCaptureContentTypeHeader{..} =
    object $
    catMaybes
    [ fmap (("CsvContentTypes",) . toJSON) _sageMakerEndpointConfigCaptureContentTypeHeaderCsvContentTypes
    , fmap (("JsonContentTypes",) . toJSON) _sageMakerEndpointConfigCaptureContentTypeHeaderJsonContentTypes
    ]

-- | Constructor for 'SageMakerEndpointConfigCaptureContentTypeHeader'
-- containing required fields as arguments.
sageMakerEndpointConfigCaptureContentTypeHeader
  :: SageMakerEndpointConfigCaptureContentTypeHeader
sageMakerEndpointConfigCaptureContentTypeHeader  =
  SageMakerEndpointConfigCaptureContentTypeHeader
  { _sageMakerEndpointConfigCaptureContentTypeHeaderCsvContentTypes = Nothing
  , _sageMakerEndpointConfigCaptureContentTypeHeaderJsonContentTypes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader.html#cfn-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader-csvcontenttypes
smecccthCsvContentTypes :: Lens' SageMakerEndpointConfigCaptureContentTypeHeader (Maybe (ValList Text))
smecccthCsvContentTypes = lens _sageMakerEndpointConfigCaptureContentTypeHeaderCsvContentTypes (\s a -> s { _sageMakerEndpointConfigCaptureContentTypeHeaderCsvContentTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader.html#cfn-sagemaker-endpointconfig-datacaptureconfig-capturecontenttypeheader-jsoncontenttypes
smecccthJsonContentTypes :: Lens' SageMakerEndpointConfigCaptureContentTypeHeader (Maybe (ValList Text))
smecccthJsonContentTypes = lens _sageMakerEndpointConfigCaptureContentTypeHeaderJsonContentTypes (\s a -> s { _sageMakerEndpointConfigCaptureContentTypeHeaderJsonContentTypes = a })
