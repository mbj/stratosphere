
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-stageoverrides.html

module Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesStageOverrides where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings
import Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesRouteSettings

-- | Full data type definition for
-- ApiGatewayV2ApiGatewayManagedOverridesStageOverrides. See
-- 'apiGatewayV2ApiGatewayManagedOverridesStageOverrides' for a more
-- convenient constructor.
data ApiGatewayV2ApiGatewayManagedOverridesStageOverrides =
  ApiGatewayV2ApiGatewayManagedOverridesStageOverrides
  { _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAccessLogSettings :: Maybe ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAutoDeploy :: Maybe (Val Bool)
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDefaultRouteSettings :: Maybe ApiGatewayV2ApiGatewayManagedOverridesRouteSettings
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDescription :: Maybe (Val Text)
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesRouteSettings :: Maybe Object
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesStageVariables :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2ApiGatewayManagedOverridesStageOverrides where
  toJSON ApiGatewayV2ApiGatewayManagedOverridesStageOverrides{..} =
    object $
    catMaybes
    [ fmap (("AccessLogSettings",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAccessLogSettings
    , fmap (("AutoDeploy",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAutoDeploy
    , fmap (("DefaultRouteSettings",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDefaultRouteSettings
    , fmap (("Description",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDescription
    , fmap (("RouteSettings",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesStageOverridesRouteSettings
    , fmap (("StageVariables",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesStageOverridesStageVariables
    ]

-- | Constructor for 'ApiGatewayV2ApiGatewayManagedOverridesStageOverrides'
-- containing required fields as arguments.
apiGatewayV2ApiGatewayManagedOverridesStageOverrides
  :: ApiGatewayV2ApiGatewayManagedOverridesStageOverrides
apiGatewayV2ApiGatewayManagedOverridesStageOverrides  =
  ApiGatewayV2ApiGatewayManagedOverridesStageOverrides
  { _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAccessLogSettings = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAutoDeploy = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDefaultRouteSettings = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDescription = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesRouteSettings = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesStageOverridesStageVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-stageoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-stageoverrides-accesslogsettings
agvagmosoAccessLogSettings :: Lens' ApiGatewayV2ApiGatewayManagedOverridesStageOverrides (Maybe ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings)
agvagmosoAccessLogSettings = lens _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAccessLogSettings (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAccessLogSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-stageoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-stageoverrides-autodeploy
agvagmosoAutoDeploy :: Lens' ApiGatewayV2ApiGatewayManagedOverridesStageOverrides (Maybe (Val Bool))
agvagmosoAutoDeploy = lens _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAutoDeploy (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesStageOverridesAutoDeploy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-stageoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-stageoverrides-defaultroutesettings
agvagmosoDefaultRouteSettings :: Lens' ApiGatewayV2ApiGatewayManagedOverridesStageOverrides (Maybe ApiGatewayV2ApiGatewayManagedOverridesRouteSettings)
agvagmosoDefaultRouteSettings = lens _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDefaultRouteSettings (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDefaultRouteSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-stageoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-stageoverrides-description
agvagmosoDescription :: Lens' ApiGatewayV2ApiGatewayManagedOverridesStageOverrides (Maybe (Val Text))
agvagmosoDescription = lens _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDescription (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesStageOverridesDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-stageoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-stageoverrides-routesettings
agvagmosoRouteSettings :: Lens' ApiGatewayV2ApiGatewayManagedOverridesStageOverrides (Maybe Object)
agvagmosoRouteSettings = lens _apiGatewayV2ApiGatewayManagedOverridesStageOverridesRouteSettings (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesStageOverridesRouteSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-stageoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-stageoverrides-stagevariables
agvagmosoStageVariables :: Lens' ApiGatewayV2ApiGatewayManagedOverridesStageOverrides (Maybe Object)
agvagmosoStageVariables = lens _apiGatewayV2ApiGatewayManagedOverridesStageOverridesStageVariables (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesStageOverridesStageVariables = a })
