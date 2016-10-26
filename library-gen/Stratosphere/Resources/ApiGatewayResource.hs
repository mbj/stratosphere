{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ApiGateway::Resource resource creates a resource in an Amazon
-- API Gateway (API Gateway) API.

module Stratosphere.Resources.ApiGatewayResource where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayResource. See
-- 'apiGatewayResource' for a more convenient constructor.
data ApiGatewayResource =
  ApiGatewayResource
  { _apiGatewayResourceParentId :: Val Text
  , _apiGatewayResourcePathPart :: Val Text
  , _apiGatewayResourceRestApiId :: Val Text
  } deriving (Show, Generic)

instance ToJSON ApiGatewayResource where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON ApiGatewayResource where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

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

-- | If you want to create a child resource, the ID of the parent resource.
-- For resources without a parent, specify the RestApi root resource ID, such
-- as { "Fn::GetAtt": ["MyRestApi", "RootResourceId"] }.
agrParentId :: Lens' ApiGatewayResource (Val Text)
agrParentId = lens _apiGatewayResourceParentId (\s a -> s { _apiGatewayResourceParentId = a })

-- | A path name for the resource.
agrPathPart :: Lens' ApiGatewayResource (Val Text)
agrPathPart = lens _apiGatewayResourcePathPart (\s a -> s { _apiGatewayResourcePathPart = a })

-- | The ID of the RestApi resource in which you want to create this resource.
agrRestApiId :: Lens' ApiGatewayResource (Val Text)
agrRestApiId = lens _apiGatewayResourceRestApiId (\s a -> s { _apiGatewayResourceRestApiId = a })