{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ApiGateway::RestApi resource contains a collection of Amazon API
-- Gateway (API Gateway) resources and methods that can be invoked through
-- HTTPS endpoints.

module Stratosphere.Resources.ApiGatewayRestApi where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayRestApiS3Location

-- | Full data type definition for ApiGatewayRestApi. See 'apiGatewayRestApi'
-- for a more convenient constructor.
data ApiGatewayRestApi =
  ApiGatewayRestApi
  { _apiGatewayRestApiBody :: Maybe Object
  , _apiGatewayRestApiBodyS3Location :: Maybe ApiGatewayRestApiS3Location
  , _apiGatewayRestApiCloneFrom :: Maybe (Val Text)
  , _apiGatewayRestApiDescription :: Maybe (Val Text)
  , _apiGatewayRestApiFailOnWarnings :: Maybe (Val Bool')
  , _apiGatewayRestApiName :: Val Text
  , _apiGatewayRestApiParameters :: Maybe [Val Text]
  } deriving (Show, Generic)

instance ToJSON ApiGatewayRestApi where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

instance FromJSON ApiGatewayRestApi where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

-- | Constructor for 'ApiGatewayRestApi' containing required fields as
-- arguments.
apiGatewayRestApi
  :: Val Text -- ^ 'agraName'
  -> ApiGatewayRestApi
apiGatewayRestApi namearg =
  ApiGatewayRestApi
  { _apiGatewayRestApiBody = Nothing
  , _apiGatewayRestApiBodyS3Location = Nothing
  , _apiGatewayRestApiCloneFrom = Nothing
  , _apiGatewayRestApiDescription = Nothing
  , _apiGatewayRestApiFailOnWarnings = Nothing
  , _apiGatewayRestApiName = namearg
  , _apiGatewayRestApiParameters = Nothing
  }

-- | A Swagger specification that defines a set of RESTful APIs in the JSON
-- format.
agraBody :: Lens' ApiGatewayRestApi (Maybe Object)
agraBody = lens _apiGatewayRestApiBody (\s a -> s { _apiGatewayRestApiBody = a })

-- | The Amazon Simple Storage Service (Amazon S3) location that points to a
-- Swagger file, which defines a set of RESTful APIs in JSON or YAML format.
agraBodyS3Location :: Lens' ApiGatewayRestApi (Maybe ApiGatewayRestApiS3Location)
agraBodyS3Location = lens _apiGatewayRestApiBodyS3Location (\s a -> s { _apiGatewayRestApiBodyS3Location = a })

-- | The ID of the API Gateway RestApi resource that you want to clone.
agraCloneFrom :: Lens' ApiGatewayRestApi (Maybe (Val Text))
agraCloneFrom = lens _apiGatewayRestApiCloneFrom (\s a -> s { _apiGatewayRestApiCloneFrom = a })

-- | A description of the purpose of this API Gateway RestApi resource.
agraDescription :: Lens' ApiGatewayRestApi (Maybe (Val Text))
agraDescription = lens _apiGatewayRestApiDescription (\s a -> s { _apiGatewayRestApiDescription = a })

-- | If a warning occurs while API Gateway is creating the RestApi resource,
-- indicates whether to roll back the resource.
agraFailOnWarnings :: Lens' ApiGatewayRestApi (Maybe (Val Bool'))
agraFailOnWarnings = lens _apiGatewayRestApiFailOnWarnings (\s a -> s { _apiGatewayRestApiFailOnWarnings = a })

-- | A name for the API Gateway RestApi resource.
agraName :: Lens' ApiGatewayRestApi (Val Text)
agraName = lens _apiGatewayRestApiName (\s a -> s { _apiGatewayRestApiName = a })

-- | Custom header parameters for the request.
agraParameters :: Lens' ApiGatewayRestApi (Maybe [Val Text])
agraParameters = lens _apiGatewayRestApiParameters (\s a -> s { _apiGatewayRestApiParameters = a })