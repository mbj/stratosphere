{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html

module Stratosphere.Resources.ApiGatewayV2Stage where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayV2StageAccessLogSettings
import Stratosphere.ResourceProperties.ApiGatewayV2StageRouteSettings

-- | Full data type definition for ApiGatewayV2Stage. See 'apiGatewayV2Stage'
-- for a more convenient constructor.
data ApiGatewayV2Stage =
  ApiGatewayV2Stage
  { _apiGatewayV2StageAccessLogSettings :: Maybe ApiGatewayV2StageAccessLogSettings
  , _apiGatewayV2StageApiId :: Val Text
  , _apiGatewayV2StageClientCertificateId :: Maybe (Val Text)
  , _apiGatewayV2StageDefaultRouteSettings :: Maybe ApiGatewayV2StageRouteSettings
  , _apiGatewayV2StageDeploymentId :: Val Text
  , _apiGatewayV2StageDescription :: Maybe (Val Text)
  , _apiGatewayV2StageRouteSettings :: Maybe Object
  , _apiGatewayV2StageStageName :: Val Text
  , _apiGatewayV2StageStageVariables :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2Stage where
  toJSON ApiGatewayV2Stage{..} =
    object $
    catMaybes
    [ fmap (("AccessLogSettings",) . toJSON) _apiGatewayV2StageAccessLogSettings
    , (Just . ("ApiId",) . toJSON) _apiGatewayV2StageApiId
    , fmap (("ClientCertificateId",) . toJSON) _apiGatewayV2StageClientCertificateId
    , fmap (("DefaultRouteSettings",) . toJSON) _apiGatewayV2StageDefaultRouteSettings
    , (Just . ("DeploymentId",) . toJSON) _apiGatewayV2StageDeploymentId
    , fmap (("Description",) . toJSON) _apiGatewayV2StageDescription
    , fmap (("RouteSettings",) . toJSON) _apiGatewayV2StageRouteSettings
    , (Just . ("StageName",) . toJSON) _apiGatewayV2StageStageName
    , fmap (("StageVariables",) . toJSON) _apiGatewayV2StageStageVariables
    ]

instance FromJSON ApiGatewayV2Stage where
  parseJSON (Object obj) =
    ApiGatewayV2Stage <$>
      (obj .:? "AccessLogSettings") <*>
      (obj .: "ApiId") <*>
      (obj .:? "ClientCertificateId") <*>
      (obj .:? "DefaultRouteSettings") <*>
      (obj .: "DeploymentId") <*>
      (obj .:? "Description") <*>
      (obj .:? "RouteSettings") <*>
      (obj .: "StageName") <*>
      (obj .:? "StageVariables")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayV2Stage' containing required fields as
-- arguments.
apiGatewayV2Stage
  :: Val Text -- ^ 'agvsApiId'
  -> Val Text -- ^ 'agvsDeploymentId'
  -> Val Text -- ^ 'agvsStageName'
  -> ApiGatewayV2Stage
apiGatewayV2Stage apiIdarg deploymentIdarg stageNamearg =
  ApiGatewayV2Stage
  { _apiGatewayV2StageAccessLogSettings = Nothing
  , _apiGatewayV2StageApiId = apiIdarg
  , _apiGatewayV2StageClientCertificateId = Nothing
  , _apiGatewayV2StageDefaultRouteSettings = Nothing
  , _apiGatewayV2StageDeploymentId = deploymentIdarg
  , _apiGatewayV2StageDescription = Nothing
  , _apiGatewayV2StageRouteSettings = Nothing
  , _apiGatewayV2StageStageName = stageNamearg
  , _apiGatewayV2StageStageVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-accesslogsettings
agvsAccessLogSettings :: Lens' ApiGatewayV2Stage (Maybe ApiGatewayV2StageAccessLogSettings)
agvsAccessLogSettings = lens _apiGatewayV2StageAccessLogSettings (\s a -> s { _apiGatewayV2StageAccessLogSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-apiid
agvsApiId :: Lens' ApiGatewayV2Stage (Val Text)
agvsApiId = lens _apiGatewayV2StageApiId (\s a -> s { _apiGatewayV2StageApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-clientcertificateid
agvsClientCertificateId :: Lens' ApiGatewayV2Stage (Maybe (Val Text))
agvsClientCertificateId = lens _apiGatewayV2StageClientCertificateId (\s a -> s { _apiGatewayV2StageClientCertificateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-defaultroutesettings
agvsDefaultRouteSettings :: Lens' ApiGatewayV2Stage (Maybe ApiGatewayV2StageRouteSettings)
agvsDefaultRouteSettings = lens _apiGatewayV2StageDefaultRouteSettings (\s a -> s { _apiGatewayV2StageDefaultRouteSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-deploymentid
agvsDeploymentId :: Lens' ApiGatewayV2Stage (Val Text)
agvsDeploymentId = lens _apiGatewayV2StageDeploymentId (\s a -> s { _apiGatewayV2StageDeploymentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-description
agvsDescription :: Lens' ApiGatewayV2Stage (Maybe (Val Text))
agvsDescription = lens _apiGatewayV2StageDescription (\s a -> s { _apiGatewayV2StageDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-routesettings
agvsRouteSettings :: Lens' ApiGatewayV2Stage (Maybe Object)
agvsRouteSettings = lens _apiGatewayV2StageRouteSettings (\s a -> s { _apiGatewayV2StageRouteSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-stagename
agvsStageName :: Lens' ApiGatewayV2Stage (Val Text)
agvsStageName = lens _apiGatewayV2StageStageName (\s a -> s { _apiGatewayV2StageStageName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-stagevariables
agvsStageVariables :: Lens' ApiGatewayV2Stage (Maybe Object)
agvsStageVariables = lens _apiGatewayV2StageStageVariables (\s a -> s { _apiGatewayV2StageStageVariables = a })
