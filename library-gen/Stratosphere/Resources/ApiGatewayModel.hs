{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html

module Stratosphere.Resources.ApiGatewayModel where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayModel. See 'apiGatewayModel' for
-- | a more convenient constructor.
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
-- | arguments.
apiGatewayModel
  :: Val Text -- ^ 'agmoRestApiId'
  -> ApiGatewayModel
apiGatewayModel restApiIdarg =
  ApiGatewayModel
  { _apiGatewayModelContentType = Nothing
  , _apiGatewayModelDescription = Nothing
  , _apiGatewayModelName = Nothing
  , _apiGatewayModelRestApiId = restApiIdarg
  , _apiGatewayModelSchema = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-contenttype
agmoContentType :: Lens' ApiGatewayModel (Maybe (Val Text))
agmoContentType = lens _apiGatewayModelContentType (\s a -> s { _apiGatewayModelContentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-description
agmoDescription :: Lens' ApiGatewayModel (Maybe (Val Text))
agmoDescription = lens _apiGatewayModelDescription (\s a -> s { _apiGatewayModelDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-name
agmoName :: Lens' ApiGatewayModel (Maybe (Val Text))
agmoName = lens _apiGatewayModelName (\s a -> s { _apiGatewayModelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-restapiid
agmoRestApiId :: Lens' ApiGatewayModel (Val Text)
agmoRestApiId = lens _apiGatewayModelRestApiId (\s a -> s { _apiGatewayModelRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-schema
agmoSchema :: Lens' ApiGatewayModel (Maybe Object)
agmoSchema = lens _apiGatewayModelSchema (\s a -> s { _apiGatewayModelSchema = a })
