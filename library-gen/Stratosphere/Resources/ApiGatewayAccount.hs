{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ApiGateway::Account resource specifies the AWS Identity and
-- Access Management (IAM) role that Amazon API Gateway (API Gateway) uses to
-- write API logs to Amazon CloudWatch Logs (CloudWatch Logs).

module Stratosphere.Resources.ApiGatewayAccount where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayAccount. See 'apiGatewayAccount'
-- for a more convenient constructor.
data ApiGatewayAccount =
  ApiGatewayAccount
  { _apiGatewayAccountCloudWatchRoleArn :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayAccount where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

instance FromJSON ApiGatewayAccount where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

-- | Constructor for 'ApiGatewayAccount' containing required fields as
-- arguments.
apiGatewayAccount
  :: ApiGatewayAccount
apiGatewayAccount  =
  ApiGatewayAccount
  { _apiGatewayAccountCloudWatchRoleArn = Nothing
  }

-- | The Amazon Resource Name (ARN) of an IAM role that has write access to
-- CloudWatch Logs in your account.
agaCloudWatchRoleArn :: Lens' ApiGatewayAccount (Maybe (Val Text))
agaCloudWatchRoleArn = lens _apiGatewayAccountCloudWatchRoleArn (\s a -> s { _apiGatewayAccountCloudWatchRoleArn = a })