{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ApiGateway::Deployment resource deploys an Amazon API Gateway
-- (API Gateway) RestApi resource to a stage so that clients can call the API
-- over the Internet. The stage acts as an environment.

module Stratosphere.Resources.ApiGatewayDeployment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.APIGatewayDeploymentStageDescription

-- | Full data type definition for ApiGatewayDeployment. See
-- 'apiGatewayDeployment' for a more convenient constructor.
data ApiGatewayDeployment =
  ApiGatewayDeployment
  { _apiGatewayDeploymentDescription :: Maybe (Val Text)
  , _apiGatewayDeploymentRestApiId :: Val Text
  , _apiGatewayDeploymentStageDescription :: Maybe APIGatewayDeploymentStageDescription
  , _apiGatewayDeploymentStageName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayDeployment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON ApiGatewayDeployment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'ApiGatewayDeployment' containing required fields as
-- arguments.
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

-- | A description of the purpose of the API Gateway deployment.
agdDescription :: Lens' ApiGatewayDeployment (Maybe (Val Text))
agdDescription = lens _apiGatewayDeploymentDescription (\s a -> s { _apiGatewayDeploymentDescription = a })

-- | The ID of the RestApi resource to deploy.
agdRestApiId :: Lens' ApiGatewayDeployment (Val Text)
agdRestApiId = lens _apiGatewayDeploymentRestApiId (\s a -> s { _apiGatewayDeploymentRestApiId = a })

-- | Configures the stage that API Gateway creates with this deployment.
agdStageDescription :: Lens' ApiGatewayDeployment (Maybe APIGatewayDeploymentStageDescription)
agdStageDescription = lens _apiGatewayDeploymentStageDescription (\s a -> s { _apiGatewayDeploymentStageDescription = a })

-- | A name for the stage that API Gateway creates with this deployment. Use
-- only alphanumeric characters.
agdStageName :: Lens' ApiGatewayDeployment (Maybe (Val Text))
agdStageName = lens _apiGatewayDeploymentStageName (\s a -> s { _apiGatewayDeploymentStageName = a })