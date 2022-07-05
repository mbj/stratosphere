{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html

module Stratosphere.Resources.SageMakerEndpoint where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerEndpointVariantProperty
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SageMakerEndpoint. See 'sageMakerEndpoint'
-- for a more convenient constructor.
data SageMakerEndpoint =
  SageMakerEndpoint
  { _sageMakerEndpointEndpointConfigName :: Val Text
  , _sageMakerEndpointEndpointName :: Maybe (Val Text)
  , _sageMakerEndpointExcludeRetainedVariantProperties :: Maybe [SageMakerEndpointVariantProperty]
  , _sageMakerEndpointRetainAllVariantProperties :: Maybe (Val Bool)
  , _sageMakerEndpointTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties SageMakerEndpoint where
  toResourceProperties SageMakerEndpoint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SageMaker::Endpoint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("EndpointConfigName",) . toJSON) _sageMakerEndpointEndpointConfigName
        , fmap (("EndpointName",) . toJSON) _sageMakerEndpointEndpointName
        , fmap (("ExcludeRetainedVariantProperties",) . toJSON) _sageMakerEndpointExcludeRetainedVariantProperties
        , fmap (("RetainAllVariantProperties",) . toJSON) _sageMakerEndpointRetainAllVariantProperties
        , fmap (("Tags",) . toJSON) _sageMakerEndpointTags
        ]
    }

-- | Constructor for 'SageMakerEndpoint' containing required fields as
-- arguments.
sageMakerEndpoint
  :: Val Text -- ^ 'smeEndpointConfigName'
  -> SageMakerEndpoint
sageMakerEndpoint endpointConfigNamearg =
  SageMakerEndpoint
  { _sageMakerEndpointEndpointConfigName = endpointConfigNamearg
  , _sageMakerEndpointEndpointName = Nothing
  , _sageMakerEndpointExcludeRetainedVariantProperties = Nothing
  , _sageMakerEndpointRetainAllVariantProperties = Nothing
  , _sageMakerEndpointTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointconfigname
smeEndpointConfigName :: Lens' SageMakerEndpoint (Val Text)
smeEndpointConfigName = lens _sageMakerEndpointEndpointConfigName (\s a -> s { _sageMakerEndpointEndpointConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointname
smeEndpointName :: Lens' SageMakerEndpoint (Maybe (Val Text))
smeEndpointName = lens _sageMakerEndpointEndpointName (\s a -> s { _sageMakerEndpointEndpointName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-excluderetainedvariantproperties
smeExcludeRetainedVariantProperties :: Lens' SageMakerEndpoint (Maybe [SageMakerEndpointVariantProperty])
smeExcludeRetainedVariantProperties = lens _sageMakerEndpointExcludeRetainedVariantProperties (\s a -> s { _sageMakerEndpointExcludeRetainedVariantProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-retainallvariantproperties
smeRetainAllVariantProperties :: Lens' SageMakerEndpoint (Maybe (Val Bool))
smeRetainAllVariantProperties = lens _sageMakerEndpointRetainAllVariantProperties (\s a -> s { _sageMakerEndpointRetainAllVariantProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-tags
smeTags :: Lens' SageMakerEndpoint (Maybe [Tag])
smeTags = lens _sageMakerEndpointTags (\s a -> s { _sageMakerEndpointTags = a })
