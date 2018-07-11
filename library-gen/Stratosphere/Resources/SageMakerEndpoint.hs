{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html

module Stratosphere.Resources.SageMakerEndpoint where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SageMakerEndpoint. See 'sageMakerEndpoint'
-- for a more convenient constructor.
data SageMakerEndpoint =
  SageMakerEndpoint
  { _sageMakerEndpointEndpointConfigName :: Val Text
  , _sageMakerEndpointEndpointName :: Maybe (Val Text)
  , _sageMakerEndpointTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON SageMakerEndpoint where
  toJSON SageMakerEndpoint{..} =
    object $
    catMaybes
    [ (Just . ("EndpointConfigName",) . toJSON) _sageMakerEndpointEndpointConfigName
    , fmap (("EndpointName",) . toJSON) _sageMakerEndpointEndpointName
    , fmap (("Tags",) . toJSON) _sageMakerEndpointTags
    ]

instance FromJSON SageMakerEndpoint where
  parseJSON (Object obj) =
    SageMakerEndpoint <$>
      (obj .: "EndpointConfigName") <*>
      (obj .:? "EndpointName") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'SageMakerEndpoint' containing required fields as
-- arguments.
sageMakerEndpoint
  :: Val Text -- ^ 'smeEndpointConfigName'
  -> SageMakerEndpoint
sageMakerEndpoint endpointConfigNamearg =
  SageMakerEndpoint
  { _sageMakerEndpointEndpointConfigName = endpointConfigNamearg
  , _sageMakerEndpointEndpointName = Nothing
  , _sageMakerEndpointTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointconfigname
smeEndpointConfigName :: Lens' SageMakerEndpoint (Val Text)
smeEndpointConfigName = lens _sageMakerEndpointEndpointConfigName (\s a -> s { _sageMakerEndpointEndpointConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointname
smeEndpointName :: Lens' SageMakerEndpoint (Maybe (Val Text))
smeEndpointName = lens _sageMakerEndpointEndpointName (\s a -> s { _sageMakerEndpointEndpointName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-tags
smeTags :: Lens' SageMakerEndpoint (Maybe [Tag])
smeTags = lens _sageMakerEndpointTags (\s a -> s { _sageMakerEndpointTags = a })
