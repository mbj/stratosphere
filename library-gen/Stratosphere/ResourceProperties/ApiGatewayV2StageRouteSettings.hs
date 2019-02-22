{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html

module Stratosphere.ResourceProperties.ApiGatewayV2StageRouteSettings where

import Stratosphere.ResourceImports
import Stratosphere.Types

-- | Full data type definition for ApiGatewayV2StageRouteSettings. See
-- 'apiGatewayV2StageRouteSettings' for a more convenient constructor.
data ApiGatewayV2StageRouteSettings =
  ApiGatewayV2StageRouteSettings
  { _apiGatewayV2StageRouteSettingsDataTraceEnabled :: Maybe (Val Bool)
  , _apiGatewayV2StageRouteSettingsDetailedMetricsEnabled :: Maybe (Val Bool)
  , _apiGatewayV2StageRouteSettingsLoggingLevel :: Maybe (Val LoggingLevel)
  , _apiGatewayV2StageRouteSettingsThrottlingBurstLimit :: Maybe (Val Integer)
  , _apiGatewayV2StageRouteSettingsThrottlingRateLimit :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2StageRouteSettings where
  toJSON ApiGatewayV2StageRouteSettings{..} =
    object $
    catMaybes
    [ fmap (("DataTraceEnabled",) . toJSON . fmap Bool') _apiGatewayV2StageRouteSettingsDataTraceEnabled
    , fmap (("DetailedMetricsEnabled",) . toJSON . fmap Bool') _apiGatewayV2StageRouteSettingsDetailedMetricsEnabled
    , fmap (("LoggingLevel",) . toJSON) _apiGatewayV2StageRouteSettingsLoggingLevel
    , fmap (("ThrottlingBurstLimit",) . toJSON . fmap Integer') _apiGatewayV2StageRouteSettingsThrottlingBurstLimit
    , fmap (("ThrottlingRateLimit",) . toJSON . fmap Double') _apiGatewayV2StageRouteSettingsThrottlingRateLimit
    ]

instance FromJSON ApiGatewayV2StageRouteSettings where
  parseJSON (Object obj) =
    ApiGatewayV2StageRouteSettings <$>
      fmap (fmap (fmap unBool')) (obj .:? "DataTraceEnabled") <*>
      fmap (fmap (fmap unBool')) (obj .:? "DetailedMetricsEnabled") <*>
      (obj .:? "LoggingLevel") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "ThrottlingBurstLimit") <*>
      fmap (fmap (fmap unDouble')) (obj .:? "ThrottlingRateLimit")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayV2StageRouteSettings' containing required
-- fields as arguments.
apiGatewayV2StageRouteSettings
  :: ApiGatewayV2StageRouteSettings
apiGatewayV2StageRouteSettings  =
  ApiGatewayV2StageRouteSettings
  { _apiGatewayV2StageRouteSettingsDataTraceEnabled = Nothing
  , _apiGatewayV2StageRouteSettingsDetailedMetricsEnabled = Nothing
  , _apiGatewayV2StageRouteSettingsLoggingLevel = Nothing
  , _apiGatewayV2StageRouteSettingsThrottlingBurstLimit = Nothing
  , _apiGatewayV2StageRouteSettingsThrottlingRateLimit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-datatraceenabled
agvsrsDataTraceEnabled :: Lens' ApiGatewayV2StageRouteSettings (Maybe (Val Bool))
agvsrsDataTraceEnabled = lens _apiGatewayV2StageRouteSettingsDataTraceEnabled (\s a -> s { _apiGatewayV2StageRouteSettingsDataTraceEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-detailedmetricsenabled
agvsrsDetailedMetricsEnabled :: Lens' ApiGatewayV2StageRouteSettings (Maybe (Val Bool))
agvsrsDetailedMetricsEnabled = lens _apiGatewayV2StageRouteSettingsDetailedMetricsEnabled (\s a -> s { _apiGatewayV2StageRouteSettingsDetailedMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-logginglevel
agvsrsLoggingLevel :: Lens' ApiGatewayV2StageRouteSettings (Maybe (Val LoggingLevel))
agvsrsLoggingLevel = lens _apiGatewayV2StageRouteSettingsLoggingLevel (\s a -> s { _apiGatewayV2StageRouteSettingsLoggingLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-throttlingburstlimit
agvsrsThrottlingBurstLimit :: Lens' ApiGatewayV2StageRouteSettings (Maybe (Val Integer))
agvsrsThrottlingBurstLimit = lens _apiGatewayV2StageRouteSettingsThrottlingBurstLimit (\s a -> s { _apiGatewayV2StageRouteSettingsThrottlingBurstLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-throttlingratelimit
agvsrsThrottlingRateLimit :: Lens' ApiGatewayV2StageRouteSettings (Maybe (Val Double))
agvsrsThrottlingRateLimit = lens _apiGatewayV2StageRouteSettingsThrottlingRateLimit (\s a -> s { _apiGatewayV2StageRouteSettingsThrottlingRateLimit = a })
