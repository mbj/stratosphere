
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routesettings.html

module Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesRouteSettings where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApiGatewayV2ApiGatewayManagedOverridesRouteSettings. See
-- 'apiGatewayV2ApiGatewayManagedOverridesRouteSettings' for a more
-- convenient constructor.
data ApiGatewayV2ApiGatewayManagedOverridesRouteSettings =
  ApiGatewayV2ApiGatewayManagedOverridesRouteSettings
  { _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDataTraceEnabled :: Maybe (Val Bool)
  , _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDetailedMetricsEnabled :: Maybe (Val Bool)
  , _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsLoggingLevel :: Maybe (Val Text)
  , _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingBurstLimit :: Maybe (Val Integer)
  , _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingRateLimit :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2ApiGatewayManagedOverridesRouteSettings where
  toJSON ApiGatewayV2ApiGatewayManagedOverridesRouteSettings{..} =
    object $
    catMaybes
    [ fmap (("DataTraceEnabled",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDataTraceEnabled
    , fmap (("DetailedMetricsEnabled",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDetailedMetricsEnabled
    , fmap (("LoggingLevel",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsLoggingLevel
    , fmap (("ThrottlingBurstLimit",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingBurstLimit
    , fmap (("ThrottlingRateLimit",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingRateLimit
    ]

-- | Constructor for 'ApiGatewayV2ApiGatewayManagedOverridesRouteSettings'
-- containing required fields as arguments.
apiGatewayV2ApiGatewayManagedOverridesRouteSettings
  :: ApiGatewayV2ApiGatewayManagedOverridesRouteSettings
apiGatewayV2ApiGatewayManagedOverridesRouteSettings  =
  ApiGatewayV2ApiGatewayManagedOverridesRouteSettings
  { _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDataTraceEnabled = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDetailedMetricsEnabled = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsLoggingLevel = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingBurstLimit = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingRateLimit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routesettings.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routesettings-datatraceenabled
agvagmorsDataTraceEnabled :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteSettings (Maybe (Val Bool))
agvagmorsDataTraceEnabled = lens _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDataTraceEnabled (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDataTraceEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routesettings.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routesettings-detailedmetricsenabled
agvagmorsDetailedMetricsEnabled :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteSettings (Maybe (Val Bool))
agvagmorsDetailedMetricsEnabled = lens _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDetailedMetricsEnabled (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsDetailedMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routesettings.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routesettings-logginglevel
agvagmorsLoggingLevel :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteSettings (Maybe (Val Text))
agvagmorsLoggingLevel = lens _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsLoggingLevel (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsLoggingLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routesettings.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routesettings-throttlingburstlimit
agvagmorsThrottlingBurstLimit :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteSettings (Maybe (Val Integer))
agvagmorsThrottlingBurstLimit = lens _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingBurstLimit (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingBurstLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routesettings.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routesettings-throttlingratelimit
agvagmorsThrottlingRateLimit :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteSettings (Maybe (Val Double))
agvagmorsThrottlingRateLimit = lens _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingRateLimit (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteSettingsThrottlingRateLimit = a })
