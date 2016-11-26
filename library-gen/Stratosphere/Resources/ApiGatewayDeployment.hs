{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html

module Stratosphere.Resources.ApiGatewayDeployment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayDeploymentStageDescription

-- | Full data type definition for ApiGatewayDeployment. See
-- | 'apiGatewayDeployment' for a more convenient constructor.
data ApiGatewayDeployment =
  ApiGatewayDeployment
  { _apiGatewayDeploymentDescription :: Maybe (Val Text)
  , _apiGatewayDeploymentRestApiId :: Val Text
  , _apiGatewayDeploymentStageDescription :: Maybe ApiGatewayDeploymentStageDescription
  , _apiGatewayDeploymentStageName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayDeployment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON ApiGatewayDeployment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'ApiGatewayDeployment' containing required fields as
-- | arguments.
apiGatewayDeployment
  :: Val Text -- ^ 'agdRestApiId'
  -> ApiGatewayDeployment
apiGatewayDeployment restApiIdarg =
  ApiGatewayDeployment
  { _apiGatewayDeploymentDescription = Nothing
  , _apiGatewayDeploymentRestApiId = restApiIdarg
  , _apiGatewayDeploymentStageDescription = Nothing
  , _apiGatewayDeploymentStageName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-description
agdDescription :: Lens' ApiGatewayDeployment (Maybe (Val Text))
agdDescription = lens _apiGatewayDeploymentDescription (\s a -> s { _apiGatewayDeploymentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-restapiid
agdRestApiId :: Lens' ApiGatewayDeployment (Val Text)
agdRestApiId = lens _apiGatewayDeploymentRestApiId (\s a -> s { _apiGatewayDeploymentRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-stagedescription
agdStageDescription :: Lens' ApiGatewayDeployment (Maybe ApiGatewayDeploymentStageDescription)
agdStageDescription = lens _apiGatewayDeploymentStageDescription (\s a -> s { _apiGatewayDeploymentStageDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-stagename
agdStageName :: Lens' ApiGatewayDeployment (Maybe (Val Text))
agdStageName = lens _apiGatewayDeploymentStageName (\s a -> s { _apiGatewayDeploymentStageName = a })
