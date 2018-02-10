{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html

module Stratosphere.Resources.ApiGatewayBasePathMapping where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayBasePathMapping. See
-- 'apiGatewayBasePathMapping' for a more convenient constructor.
data ApiGatewayBasePathMapping =
  ApiGatewayBasePathMapping
  { _apiGatewayBasePathMappingBasePath :: Maybe (Val Text)
  , _apiGatewayBasePathMappingDomainName :: Val Text
  , _apiGatewayBasePathMappingRestApiId :: Maybe (Val Text)
  , _apiGatewayBasePathMappingStage :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayBasePathMapping where
  toJSON ApiGatewayBasePathMapping{..} =
    object $
    catMaybes
    [ fmap (("BasePath",) . toJSON) _apiGatewayBasePathMappingBasePath
    , (Just . ("DomainName",) . toJSON) _apiGatewayBasePathMappingDomainName
    , fmap (("RestApiId",) . toJSON) _apiGatewayBasePathMappingRestApiId
    , fmap (("Stage",) . toJSON) _apiGatewayBasePathMappingStage
    ]

instance FromJSON ApiGatewayBasePathMapping where
  parseJSON (Object obj) =
    ApiGatewayBasePathMapping <$>
      (obj .:? "BasePath") <*>
      (obj .: "DomainName") <*>
      (obj .:? "RestApiId") <*>
      (obj .:? "Stage")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayBasePathMapping' containing required fields as
-- arguments.
apiGatewayBasePathMapping
  :: Val Text -- ^ 'agbpmDomainName'
  -> ApiGatewayBasePathMapping
apiGatewayBasePathMapping domainNamearg =
  ApiGatewayBasePathMapping
  { _apiGatewayBasePathMappingBasePath = Nothing
  , _apiGatewayBasePathMappingDomainName = domainNamearg
  , _apiGatewayBasePathMappingRestApiId = Nothing
  , _apiGatewayBasePathMappingStage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-basepath
agbpmBasePath :: Lens' ApiGatewayBasePathMapping (Maybe (Val Text))
agbpmBasePath = lens _apiGatewayBasePathMappingBasePath (\s a -> s { _apiGatewayBasePathMappingBasePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-domainname
agbpmDomainName :: Lens' ApiGatewayBasePathMapping (Val Text)
agbpmDomainName = lens _apiGatewayBasePathMappingDomainName (\s a -> s { _apiGatewayBasePathMappingDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-restapiid
agbpmRestApiId :: Lens' ApiGatewayBasePathMapping (Maybe (Val Text))
agbpmRestApiId = lens _apiGatewayBasePathMappingRestApiId (\s a -> s { _apiGatewayBasePathMappingRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-stage
agbpmStage :: Lens' ApiGatewayBasePathMapping (Maybe (Val Text))
agbpmStage = lens _apiGatewayBasePathMappingStage (\s a -> s { _apiGatewayBasePathMappingStage = a })
