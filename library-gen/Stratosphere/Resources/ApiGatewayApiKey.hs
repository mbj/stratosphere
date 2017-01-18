{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html

module Stratosphere.Resources.ApiGatewayApiKey where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayApiKeyStageKey

-- | Full data type definition for ApiGatewayApiKey. See 'apiGatewayApiKey'
-- | for a more convenient constructor.
data ApiGatewayApiKey =
  ApiGatewayApiKey
  { _apiGatewayApiKeyDescription :: Maybe (Val Text)
  , _apiGatewayApiKeyEnabled :: Maybe (Val Bool')
  , _apiGatewayApiKeyName :: Maybe (Val Text)
  , _apiGatewayApiKeyStageKeys :: Maybe [ApiGatewayApiKeyStageKey]
  } deriving (Show, Eq, Generic)

instance ToJSON ApiGatewayApiKey where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON ApiGatewayApiKey where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'ApiGatewayApiKey' containing required fields as
-- | arguments.
apiGatewayApiKey
  :: ApiGatewayApiKey
apiGatewayApiKey  =
  ApiGatewayApiKey
  { _apiGatewayApiKeyDescription = Nothing
  , _apiGatewayApiKeyEnabled = Nothing
  , _apiGatewayApiKeyName = Nothing
  , _apiGatewayApiKeyStageKeys = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apigateway-apikey-description
agakDescription :: Lens' ApiGatewayApiKey (Maybe (Val Text))
agakDescription = lens _apiGatewayApiKeyDescription (\s a -> s { _apiGatewayApiKeyDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apigateway-apikey-enabled
agakEnabled :: Lens' ApiGatewayApiKey (Maybe (Val Bool'))
agakEnabled = lens _apiGatewayApiKeyEnabled (\s a -> s { _apiGatewayApiKeyEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apigateway-apikey-name
agakName :: Lens' ApiGatewayApiKey (Maybe (Val Text))
agakName = lens _apiGatewayApiKeyName (\s a -> s { _apiGatewayApiKeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apigateway-apikey-stagekeys
agakStageKeys :: Lens' ApiGatewayApiKey (Maybe [ApiGatewayApiKeyStageKey])
agakStageKeys = lens _apiGatewayApiKeyStageKeys (\s a -> s { _apiGatewayApiKeyStageKeys = a })
