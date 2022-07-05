{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html

module Stratosphere.Resources.ApiGatewayStage where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayStageAccessLogSetting
import Stratosphere.ResourceProperties.ApiGatewayStageCanarySetting
import Stratosphere.ResourceProperties.ApiGatewayStageMethodSetting
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ApiGatewayStage. See 'apiGatewayStage' for
-- a more convenient constructor.
data ApiGatewayStage =
  ApiGatewayStage
  { _apiGatewayStageAccessLogSetting :: Maybe ApiGatewayStageAccessLogSetting
  , _apiGatewayStageCacheClusterEnabled :: Maybe (Val Bool)
  , _apiGatewayStageCacheClusterSize :: Maybe (Val Text)
  , _apiGatewayStageCanarySetting :: Maybe ApiGatewayStageCanarySetting
  , _apiGatewayStageClientCertificateId :: Maybe (Val Text)
  , _apiGatewayStageDeploymentId :: Maybe (Val Text)
  , _apiGatewayStageDescription :: Maybe (Val Text)
  , _apiGatewayStageDocumentationVersion :: Maybe (Val Text)
  , _apiGatewayStageMethodSettings :: Maybe [ApiGatewayStageMethodSetting]
  , _apiGatewayStageRestApiId :: Val Text
  , _apiGatewayStageStageName :: Maybe (Val Text)
  , _apiGatewayStageTags :: Maybe [Tag]
  , _apiGatewayStageTracingEnabled :: Maybe (Val Bool)
  , _apiGatewayStageVariables :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayStage where
  toResourceProperties ApiGatewayStage{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::Stage"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccessLogSetting",) . toJSON) _apiGatewayStageAccessLogSetting
        , fmap (("CacheClusterEnabled",) . toJSON) _apiGatewayStageCacheClusterEnabled
        , fmap (("CacheClusterSize",) . toJSON) _apiGatewayStageCacheClusterSize
        , fmap (("CanarySetting",) . toJSON) _apiGatewayStageCanarySetting
        , fmap (("ClientCertificateId",) . toJSON) _apiGatewayStageClientCertificateId
        , fmap (("DeploymentId",) . toJSON) _apiGatewayStageDeploymentId
        , fmap (("Description",) . toJSON) _apiGatewayStageDescription
        , fmap (("DocumentationVersion",) . toJSON) _apiGatewayStageDocumentationVersion
        , fmap (("MethodSettings",) . toJSON) _apiGatewayStageMethodSettings
        , (Just . ("RestApiId",) . toJSON) _apiGatewayStageRestApiId
        , fmap (("StageName",) . toJSON) _apiGatewayStageStageName
        , fmap (("Tags",) . toJSON) _apiGatewayStageTags
        , fmap (("TracingEnabled",) . toJSON) _apiGatewayStageTracingEnabled
        , fmap (("Variables",) . toJSON) _apiGatewayStageVariables
        ]
    }

-- | Constructor for 'ApiGatewayStage' containing required fields as
-- arguments.
apiGatewayStage
  :: Val Text -- ^ 'agsRestApiId'
  -> ApiGatewayStage
apiGatewayStage restApiIdarg =
  ApiGatewayStage
  { _apiGatewayStageAccessLogSetting = Nothing
  , _apiGatewayStageCacheClusterEnabled = Nothing
  , _apiGatewayStageCacheClusterSize = Nothing
  , _apiGatewayStageCanarySetting = Nothing
  , _apiGatewayStageClientCertificateId = Nothing
  , _apiGatewayStageDeploymentId = Nothing
  , _apiGatewayStageDescription = Nothing
  , _apiGatewayStageDocumentationVersion = Nothing
  , _apiGatewayStageMethodSettings = Nothing
  , _apiGatewayStageRestApiId = restApiIdarg
  , _apiGatewayStageStageName = Nothing
  , _apiGatewayStageTags = Nothing
  , _apiGatewayStageTracingEnabled = Nothing
  , _apiGatewayStageVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-accesslogsetting
agsAccessLogSetting :: Lens' ApiGatewayStage (Maybe ApiGatewayStageAccessLogSetting)
agsAccessLogSetting = lens _apiGatewayStageAccessLogSetting (\s a -> s { _apiGatewayStageAccessLogSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclusterenabled
agsCacheClusterEnabled :: Lens' ApiGatewayStage (Maybe (Val Bool))
agsCacheClusterEnabled = lens _apiGatewayStageCacheClusterEnabled (\s a -> s { _apiGatewayStageCacheClusterEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclustersize
agsCacheClusterSize :: Lens' ApiGatewayStage (Maybe (Val Text))
agsCacheClusterSize = lens _apiGatewayStageCacheClusterSize (\s a -> s { _apiGatewayStageCacheClusterSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-canarysetting
agsCanarySetting :: Lens' ApiGatewayStage (Maybe ApiGatewayStageCanarySetting)
agsCanarySetting = lens _apiGatewayStageCanarySetting (\s a -> s { _apiGatewayStageCanarySetting = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-tags
agsTags :: Lens' ApiGatewayStage (Maybe [Tag])
agsTags = lens _apiGatewayStageTags (\s a -> s { _apiGatewayStageTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-tracingenabled
agsTracingEnabled :: Lens' ApiGatewayStage (Maybe (Val Bool))
agsTracingEnabled = lens _apiGatewayStageTracingEnabled (\s a -> s { _apiGatewayStageTracingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-variables
agsVariables :: Lens' ApiGatewayStage (Maybe Object)
agsVariables = lens _apiGatewayStageVariables (\s a -> s { _apiGatewayStageVariables = a })
