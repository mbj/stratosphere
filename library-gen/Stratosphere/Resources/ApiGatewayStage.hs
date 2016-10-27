{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ApiGateway::Stage resource creates a stage for an Amazon API
-- Gateway (API Gateway) deployment.

module Stratosphere.Resources.ApiGatewayStage where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayStageMethodSetting

-- | Full data type definition for ApiGatewayStage. See 'apiGatewayStage' for
-- a more convenient constructor.
data ApiGatewayStage =
  ApiGatewayStage
  { _apiGatewayStageCacheClusterEnabled :: Maybe (Val Bool')
  , _apiGatewayStageCacheClusterSize :: Maybe (Val Text)
  , _apiGatewayStageClientCertificateId :: Maybe (Val Text)
  , _apiGatewayStageDeploymentId :: Val Text
  , _apiGatewayStageDescription :: Maybe (Val Text)
  , _apiGatewayStageMethodSettings :: Maybe [ApiGatewayStageMethodSetting]
  , _apiGatewayStageRestApiId :: Val Text
  , _apiGatewayStageStageName :: Val Text
  , _apiGatewayStageVariables :: Maybe Object
  } deriving (Show, Generic)

instance ToJSON ApiGatewayStage where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON ApiGatewayStage where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'ApiGatewayStage' containing required fields as
-- arguments.
apiGatewayStage
  :: Val Text -- ^ 'agsDeploymentId'
  -> Val Text -- ^ 'agsRestApiId'
  -> Val Text -- ^ 'agsStageName'
  -> ApiGatewayStage
apiGatewayStage deploymentIdarg restApiIdarg stageNamearg =
  ApiGatewayStage
  { _apiGatewayStageCacheClusterEnabled = Nothing
  , _apiGatewayStageCacheClusterSize = Nothing
  , _apiGatewayStageClientCertificateId = Nothing
  , _apiGatewayStageDeploymentId = deploymentIdarg
  , _apiGatewayStageDescription = Nothing
  , _apiGatewayStageMethodSettings = Nothing
  , _apiGatewayStageRestApiId = restApiIdarg
  , _apiGatewayStageStageName = stageNamearg
  , _apiGatewayStageVariables = Nothing
  }

-- | Indicates whether cache clustering is enabled for the stage.
agsCacheClusterEnabled :: Lens' ApiGatewayStage (Maybe (Val Bool'))
agsCacheClusterEnabled = lens _apiGatewayStageCacheClusterEnabled (\s a -> s { _apiGatewayStageCacheClusterEnabled = a })

-- | The stage's cache cluster size.
agsCacheClusterSize :: Lens' ApiGatewayStage (Maybe (Val Text))
agsCacheClusterSize = lens _apiGatewayStageCacheClusterSize (\s a -> s { _apiGatewayStageCacheClusterSize = a })

-- | The identifier of the client certificate that API Gateway uses to call
-- your integration endpoints in the stage.
agsClientCertificateId :: Lens' ApiGatewayStage (Maybe (Val Text))
agsClientCertificateId = lens _apiGatewayStageClientCertificateId (\s a -> s { _apiGatewayStageClientCertificateId = a })

-- | The ID of the deployment that the stage points to.
agsDeploymentId :: Lens' ApiGatewayStage (Val Text)
agsDeploymentId = lens _apiGatewayStageDeploymentId (\s a -> s { _apiGatewayStageDeploymentId = a })

-- | A description of the stage's purpose.
agsDescription :: Lens' ApiGatewayStage (Maybe (Val Text))
agsDescription = lens _apiGatewayStageDescription (\s a -> s { _apiGatewayStageDescription = a })

-- | Settings for all methods in the stage.
agsMethodSettings :: Lens' ApiGatewayStage (Maybe [ApiGatewayStageMethodSetting])
agsMethodSettings = lens _apiGatewayStageMethodSettings (\s a -> s { _apiGatewayStageMethodSettings = a })

-- | The ID of the RestApi resource that you're deploying with this stage.
agsRestApiId :: Lens' ApiGatewayStage (Val Text)
agsRestApiId = lens _apiGatewayStageRestApiId (\s a -> s { _apiGatewayStageRestApiId = a })

-- | The name of the stage, which API Gateway uses as the first path segment
-- in the invoke Uniform Resource Identifier (URI).
agsStageName :: Lens' ApiGatewayStage (Val Text)
agsStageName = lens _apiGatewayStageStageName (\s a -> s { _apiGatewayStageStageName = a })

-- | A map (string to string map) that defines the stage variables, where the
-- variable name is the key and the variable value is the value. Variable
-- names are limited to alphanumeric characters. Values must match the
-- following regular expression: [A-Za-z0-9-._~:/?#&amp;=,]+.
agsVariables :: Lens' ApiGatewayStage (Maybe Object)
agsVariables = lens _apiGatewayStageVariables (\s a -> s { _apiGatewayStageVariables = a })