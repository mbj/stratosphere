{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html

module Stratosphere.Resources.ApiGatewayResource where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayResource. See
-- | 'apiGatewayResource' for a more convenient constructor.
data ApiGatewayResource =
  ApiGatewayResource
  { _apiGatewayResourceParentId :: Val Text
  , _apiGatewayResourcePathPart :: Val Text
  , _apiGatewayResourceRestApiId :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApiGatewayResource where
  toJSON ApiGatewayResource{..} =
    object $
    catMaybes
    [ Just ("ParentId" .= _apiGatewayResourceParentId)
    , Just ("PathPart" .= _apiGatewayResourcePathPart)
    , Just ("RestApiId" .= _apiGatewayResourceRestApiId)
    ]

instance FromJSON ApiGatewayResource where
  parseJSON (Object obj) =
    ApiGatewayResource <$>
      obj .: "ParentId" <*>
      obj .: "PathPart" <*>
      obj .: "RestApiId"
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayResource' containing required fields as
-- | arguments.
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
