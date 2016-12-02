{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html

module Stratosphere.Resources.ApiGatewayResource where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayResource. See
-- | 'apiGatewayResource' for a more convenient constructor.
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
