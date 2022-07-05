{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html

module Stratosphere.Resources.ApiGatewayV2ApiMapping where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2ApiMapping. See
-- 'apiGatewayV2ApiMapping' for a more convenient constructor.
data ApiGatewayV2ApiMapping =
  ApiGatewayV2ApiMapping
  { _apiGatewayV2ApiMappingApiId :: Val Text
  , _apiGatewayV2ApiMappingApiMappingKey :: Maybe (Val Text)
  , _apiGatewayV2ApiMappingDomainName :: Val Text
  , _apiGatewayV2ApiMappingStage :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayV2ApiMapping where
  toResourceProperties ApiGatewayV2ApiMapping{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGatewayV2::ApiMapping"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiId",) . toJSON) _apiGatewayV2ApiMappingApiId
        , fmap (("ApiMappingKey",) . toJSON) _apiGatewayV2ApiMappingApiMappingKey
        , (Just . ("DomainName",) . toJSON) _apiGatewayV2ApiMappingDomainName
        , (Just . ("Stage",) . toJSON) _apiGatewayV2ApiMappingStage
        ]
    }

-- | Constructor for 'ApiGatewayV2ApiMapping' containing required fields as
-- arguments.
apiGatewayV2ApiMapping
  :: Val Text -- ^ 'agvamApiId'
  -> Val Text -- ^ 'agvamDomainName'
  -> Val Text -- ^ 'agvamStage'
  -> ApiGatewayV2ApiMapping
apiGatewayV2ApiMapping apiIdarg domainNamearg stagearg =
  ApiGatewayV2ApiMapping
  { _apiGatewayV2ApiMappingApiId = apiIdarg
  , _apiGatewayV2ApiMappingApiMappingKey = Nothing
  , _apiGatewayV2ApiMappingDomainName = domainNamearg
  , _apiGatewayV2ApiMappingStage = stagearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html#cfn-apigatewayv2-apimapping-apiid
agvamApiId :: Lens' ApiGatewayV2ApiMapping (Val Text)
agvamApiId = lens _apiGatewayV2ApiMappingApiId (\s a -> s { _apiGatewayV2ApiMappingApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html#cfn-apigatewayv2-apimapping-apimappingkey
agvamApiMappingKey :: Lens' ApiGatewayV2ApiMapping (Maybe (Val Text))
agvamApiMappingKey = lens _apiGatewayV2ApiMappingApiMappingKey (\s a -> s { _apiGatewayV2ApiMappingApiMappingKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html#cfn-apigatewayv2-apimapping-domainname
agvamDomainName :: Lens' ApiGatewayV2ApiMapping (Val Text)
agvamDomainName = lens _apiGatewayV2ApiMappingDomainName (\s a -> s { _apiGatewayV2ApiMappingDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html#cfn-apigatewayv2-apimapping-stage
agvamStage :: Lens' ApiGatewayV2ApiMapping (Val Text)
agvamStage = lens _apiGatewayV2ApiMappingStage (\s a -> s { _apiGatewayV2ApiMappingStage = a })
