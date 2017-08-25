{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html

module Stratosphere.Resources.ApiGatewayStage where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApiGatewayStageMethodSetting

-- | Full data type definition for ApiGatewayStage. See 'apiGatewayStage' for
-- a more convenient constructor.
data ApiGatewayStage =
  ApiGatewayStage
  { _apiGatewayStageCacheClusterEnabled :: Maybe (Val Bool)
  , _apiGatewayStageCacheClusterSize :: Maybe (Val Text)
  , _apiGatewayStageClientCertificateId :: Maybe (Val Text)
  , _apiGatewayStageDeploymentId :: Maybe (Val Text)
  , _apiGatewayStageDescription :: Maybe (Val Text)
  , _apiGatewayStageDocumentationVersion :: Maybe (Val Text)
  , _apiGatewayStageMethodSettings :: Maybe [ApiGatewayStageMethodSetting]
  , _apiGatewayStageRestApiId :: Val Text
  , _apiGatewayStageStageName :: Maybe (Val Text)
  , _apiGatewayStageVariables :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON ApiGatewayStage where
  toJSON ApiGatewayStage{..} =
    object $
    catMaybes
    [ fmap (("CacheClusterEnabled",) . toJSON . fmap Bool') _apiGatewayStageCacheClusterEnabled
    , fmap (("CacheClusterSize",) . toJSON) _apiGatewayStageCacheClusterSize
    , fmap (("ClientCertificateId",) . toJSON) _apiGatewayStageClientCertificateId
    , fmap (("DeploymentId",) . toJSON) _apiGatewayStageDeploymentId
    , fmap (("Description",) . toJSON) _apiGatewayStageDescription
    , fmap (("DocumentationVersion",) . toJSON) _apiGatewayStageDocumentationVersion
    , fmap (("MethodSettings",) . toJSON) _apiGatewayStageMethodSettings
    , (Just . ("RestApiId",) . toJSON) _apiGatewayStageRestApiId
    , fmap (("StageName",) . toJSON) _apiGatewayStageStageName
    , fmap (("Variables",) . toJSON) _apiGatewayStageVariables
    ]

instance FromJSON ApiGatewayStage where
  parseJSON (Object obj) =
    ApiGatewayStage <$>
      fmap (fmap (fmap unBool')) (obj .:? "CacheClusterEnabled") <*>
      (obj .:? "CacheClusterSize") <*>
      (obj .:? "ClientCertificateId") <*>
      (obj .:? "DeploymentId") <*>
      (obj .:? "Description") <*>
      (obj .:? "DocumentationVersion") <*>
      (obj .:? "MethodSettings") <*>
      (obj .: "RestApiId") <*>
      (obj .:? "StageName") <*>
      (obj .:? "Variables")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayStage' containing required fields as
-- arguments.
apiGatewayStage
  :: Val Text -- ^ 'agsRestApiId'
  -> ApiGatewayStage
apiGatewayStage restApiIdarg =
  ApiGatewayStage
  { _apiGatewayStageCacheClusterEnabled = Nothing
  , _apiGatewayStageCacheClusterSize = Nothing
  , _apiGatewayStageClientCertificateId = Nothing
  , _apiGatewayStageDeploymentId = Nothing
  , _apiGatewayStageDescription = Nothing
  , _apiGatewayStageDocumentationVersion = Nothing
  , _apiGatewayStageMethodSettings = Nothing
  , _apiGatewayStageRestApiId = restApiIdarg
  , _apiGatewayStageStageName = Nothing
  , _apiGatewayStageVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclusterenabled
agsCacheClusterEnabled :: Lens' ApiGatewayStage (Maybe (Val Bool))
agsCacheClusterEnabled = lens _apiGatewayStageCacheClusterEnabled (\s a -> s { _apiGatewayStageCacheClusterEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclustersize
agsCacheClusterSize :: Lens' ApiGatewayStage (Maybe (Val Text))
agsCacheClusterSize = lens _apiGatewayStageCacheClusterSize (\s a -> s { _apiGatewayStageCacheClusterSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-clientcertificateid
agsClientCertificateId :: Lens' ApiGatewayStage (Maybe (Val Text))
agsClientCertificateId = lens _apiGatewayStageClientCertificateId (\s a -> s { _apiGatewayStageClientCertificateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-deploymentid
agsDeploymentId :: Lens' ApiGatewayStage (Maybe (Val Text))
agsDeploymentId = lens _apiGatewayStageDeploymentId (\s a -> s { _apiGatewayStageDeploymentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-description
agsDescription :: Lens' ApiGatewayStage (Maybe (Val Text))
agsDescription = lens _apiGatewayStageDescription (\s a -> s { _apiGatewayStageDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-documentationversion
agsDocumentationVersion :: Lens' ApiGatewayStage (Maybe (Val Text))
agsDocumentationVersion = lens _apiGatewayStageDocumentationVersion (\s a -> s { _apiGatewayStageDocumentationVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-methodsettings
agsMethodSettings :: Lens' ApiGatewayStage (Maybe [ApiGatewayStageMethodSetting])
agsMethodSettings = lens _apiGatewayStageMethodSettings (\s a -> s { _apiGatewayStageMethodSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-restapiid
agsRestApiId :: Lens' ApiGatewayStage (Val Text)
agsRestApiId = lens _apiGatewayStageRestApiId (\s a -> s { _apiGatewayStageRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-stagename
agsStageName :: Lens' ApiGatewayStage (Maybe (Val Text))
agsStageName = lens _apiGatewayStageStageName (\s a -> s { _apiGatewayStageStageName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-variables
agsVariables :: Lens' ApiGatewayStage (Maybe Object)
agsVariables = lens _apiGatewayStageVariables (\s a -> s { _apiGatewayStageVariables = a })
