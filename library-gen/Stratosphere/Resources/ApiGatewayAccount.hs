{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html

module Stratosphere.Resources.ApiGatewayAccount where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayAccount. See 'apiGatewayAccount'
-- | for a more convenient constructor.
data ApiGatewayAccount =
  ApiGatewayAccount
  { _apiGatewayAccountCloudWatchRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ApiGatewayAccount where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

instance FromJSON ApiGatewayAccount where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

-- | Constructor for 'ApiGatewayAccount' containing required fields as
-- | arguments.
apiGatewayAccount
  :: ApiGatewayAccount
apiGatewayAccount  =
  ApiGatewayAccount
  { _apiGatewayAccountCloudWatchRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html#cfn-apigateway-account-cloudwatchrolearn
agaCloudWatchRoleArn :: Lens' ApiGatewayAccount (Maybe (Val Text))
agaCloudWatchRoleArn = lens _apiGatewayAccountCloudWatchRoleArn (\s a -> s { _apiGatewayAccountCloudWatchRoleArn = a })
