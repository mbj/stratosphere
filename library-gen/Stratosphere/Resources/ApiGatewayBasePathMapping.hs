{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html

module Stratosphere.Resources.ApiGatewayBasePathMapping where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayBasePathMapping. See
-- | 'apiGatewayBasePathMapping' for a more convenient constructor.
data ApiGatewayBasePathMapping =
  ApiGatewayBasePathMapping
  { _apiGatewayBasePathMappingBasePath :: Maybe (Val Text)
  , _apiGatewayBasePathMappingDomainName :: Maybe (Val Text)
  , _apiGatewayBasePathMappingRestApiId :: Maybe (Val Text)
  , _apiGatewayBasePathMappingStage :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayBasePathMapping where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON ApiGatewayBasePathMapping where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'ApiGatewayBasePathMapping' containing required fields as
-- | arguments.
apiGatewayBasePathMapping
  :: ApiGatewayBasePathMapping
apiGatewayBasePathMapping  =
  ApiGatewayBasePathMapping
  { _apiGatewayBasePathMappingBasePath = Nothing
  , _apiGatewayBasePathMappingDomainName = Nothing
  , _apiGatewayBasePathMappingRestApiId = Nothing
  , _apiGatewayBasePathMappingStage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-basepath
agbpmBasePath :: Lens' ApiGatewayBasePathMapping (Maybe (Val Text))
agbpmBasePath = lens _apiGatewayBasePathMappingBasePath (\s a -> s { _apiGatewayBasePathMappingBasePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-domainname
agbpmDomainName :: Lens' ApiGatewayBasePathMapping (Maybe (Val Text))
agbpmDomainName = lens _apiGatewayBasePathMappingDomainName (\s a -> s { _apiGatewayBasePathMappingDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-restapiid
agbpmRestApiId :: Lens' ApiGatewayBasePathMapping (Maybe (Val Text))
agbpmRestApiId = lens _apiGatewayBasePathMappingRestApiId (\s a -> s { _apiGatewayBasePathMappingRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-stage
agbpmStage :: Lens' ApiGatewayBasePathMapping (Maybe (Val Text))
agbpmStage = lens _apiGatewayBasePathMappingStage (\s a -> s { _apiGatewayBasePathMappingStage = a })
