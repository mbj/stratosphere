{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ApiGateway::Model resource defines the structure of a request or
-- response payload for an Amazon API Gateway (API Gateway) method.

module Stratosphere.Resources.ApiGatewayModel where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayModel. See 'apiGatewayModel' for
-- a more convenient constructor.
data ApiGatewayModel =
  ApiGatewayModel
  { _apiGatewayModelContentType :: Maybe (Val Text)
  , _apiGatewayModelDescription :: Maybe (Val Text)
  , _apiGatewayModelName :: Maybe (Val Text)
  , _apiGatewayModelRestApiId :: Val Text
  , _apiGatewayModelSchema :: Maybe Object
  } deriving (Show, Generic)

instance ToJSON ApiGatewayModel where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON ApiGatewayModel where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'ApiGatewayModel' containing required fields as
-- arguments.
apiGatewayModel
  :: Val Text -- ^ 'agmRestApiId'
  -> ApiGatewayModel
apiGatewayModel restApiIdarg =
  ApiGatewayModel
  { _apiGatewayModelContentType = Nothing
  , _apiGatewayModelDescription = Nothing
  , _apiGatewayModelName = Nothing
  , _apiGatewayModelRestApiId = restApiIdarg
  , _apiGatewayModelSchema = Nothing
  }

-- | The content type for the model.
agmContentType :: Lens' ApiGatewayModel (Maybe (Val Text))
agmContentType = lens _apiGatewayModelContentType (\s a -> s { _apiGatewayModelContentType = a })

-- | A description that identifies this model.
agmDescription :: Lens' ApiGatewayModel (Maybe (Val Text))
agmDescription = lens _apiGatewayModelDescription (\s a -> s { _apiGatewayModelDescription = a })

-- | A name for the mode. If you don't specify a name, AWS CloudFormation
-- generates a unique physical ID and uses that ID for the model name. For
-- more information, see Name Type. Important If you specify a name, you
-- cannot do updates that require this resource to be replaced. You can still
-- do updates that require no or some interruption. If you must replace the
-- resource, specify a new name.
agmName :: Lens' ApiGatewayModel (Maybe (Val Text))
agmName = lens _apiGatewayModelName (\s a -> s { _apiGatewayModelName = a })

-- | The ID of a REST API with which to associate this model.
agmRestApiId :: Lens' ApiGatewayModel (Val Text)
agmRestApiId = lens _apiGatewayModelRestApiId (\s a -> s { _apiGatewayModelRestApiId = a })

-- | The schema to use to transform data to one or more output formats.
agmSchema :: Lens' ApiGatewayModel (Maybe Object)
agmSchema = lens _apiGatewayModelSchema (\s a -> s { _apiGatewayModelSchema = a })