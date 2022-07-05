{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html

module Stratosphere.Resources.ApiGatewayResource where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayResource. See
-- 'apiGatewayResource' for a more convenient constructor.
data ApiGatewayResource =
  ApiGatewayResource
  { _apiGatewayResourceParentId :: Val Text
  , _apiGatewayResourcePathPart :: Val Text
  , _apiGatewayResourceRestApiId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayResource where
  toResourceProperties ApiGatewayResource{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::Resource"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ParentId",) . toJSON) _apiGatewayResourceParentId
        , (Just . ("PathPart",) . toJSON) _apiGatewayResourcePathPart
        , (Just . ("RestApiId",) . toJSON) _apiGatewayResourceRestApiId
        ]
    }

-- | Constructor for 'ApiGatewayResource' containing required fields as
-- arguments.
apiGatewayResource
  :: Val Text -- ^ 'agrParentId'
  -> Val Text -- ^ 'agrPathPart'
  -> Val Text -- ^ 'agrRestApiId'
  -> ApiGatewayResource
apiGatewayResource parentIdarg pathPartarg restApiIdarg =
  ApiGatewayResource
  { _apiGatewayResourceParentId = parentIdarg
  , _apiGatewayResourcePathPart = pathPartarg
  , _apiGatewayResourceRestApiId = restApiIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-parentid
agrParentId :: Lens' ApiGatewayResource (Val Text)
agrParentId = lens _apiGatewayResourceParentId (\s a -> s { _apiGatewayResourceParentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-pathpart
agrPathPart :: Lens' ApiGatewayResource (Val Text)
agrPathPart = lens _apiGatewayResourcePathPart (\s a -> s { _apiGatewayResourcePathPart = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-restapiid
agrRestApiId :: Lens' ApiGatewayResource (Val Text)
agrRestApiId = lens _apiGatewayResourceRestApiId (\s a -> s { _apiGatewayResourceRestApiId = a })
