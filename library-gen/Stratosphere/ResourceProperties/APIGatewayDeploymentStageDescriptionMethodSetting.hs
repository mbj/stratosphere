{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | MethodSetting is a property of the Amazon API Gateway Deployment
-- StageDescription property that configures settings for all methods in an
-- Amazon API Gateway (API Gateway) stage.

module Stratosphere.ResourceProperties.APIGatewayDeploymentStageDescriptionMethodSetting where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- APIGatewayDeploymentStageDescriptionMethodSetting. See
-- 'apiGatewayDeploymentStageDescriptionMethodSetting' for a more convenient
-- constructor.
data APIGatewayDeploymentStageDescriptionMethodSetting =
  APIGatewayDeploymentStageDescriptionMethodSetting
  { _aPIGatewayDeploymentStageDescriptionMethodSettingCacheDataEncrypted :: Maybe (Val Bool')
  , _aPIGatewayDeploymentStageDescriptionMethodSettingCacheTtlInSeconds :: Maybe (Val Integer')
  , _aPIGatewayDeploymentStageDescriptionMethodSettingCachingEnabled :: Maybe (Val Bool')
  , _aPIGatewayDeploymentStageDescriptionMethodSettingDataTraceEnabled :: Maybe (Val Bool')
  , _aPIGatewayDeploymentStageDescriptionMethodSettingHttpMethod :: Maybe (Val Text)
  , _aPIGatewayDeploymentStageDescriptionMethodSettingLoggingLevel :: Maybe (Val Text)
  , _aPIGatewayDeploymentStageDescriptionMethodSettingMetricsEnabled :: Maybe (Val Bool')
  , _aPIGatewayDeploymentStageDescriptionMethodSettingResourcePath :: Maybe (Val Text)
  , _aPIGatewayDeploymentStageDescriptionMethodSettingThrottlingBurstLimit :: Maybe (Val Integer')
  , _aPIGatewayDeploymentStageDescriptionMethodSettingThrottlingRateLimit :: Maybe Double'
  } deriving (Show, Generic)

instance ToJSON APIGatewayDeploymentStageDescriptionMethodSetting where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 50, omitNothingFields = True }

instance FromJSON APIGatewayDeploymentStageDescriptionMethodSetting where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 50, omitNothingFields = True }

-- | Constructor for 'APIGatewayDeploymentStageDescriptionMethodSetting'
-- containing required fields as arguments.
apiGatewayDeploymentStageDescriptionMethodSetting
  :: APIGatewayDeploymentStageDescriptionMethodSetting
apiGatewayDeploymentStageDescriptionMethodSetting  =
  APIGatewayDeploymentStageDescriptionMethodSetting
  { _aPIGatewayDeploymentStageDescriptionMethodSettingCacheDataEncrypted = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettingCacheTtlInSeconds = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettingCachingEnabled = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettingDataTraceEnabled = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettingHttpMethod = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettingLoggingLevel = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettingMetricsEnabled = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettingResourcePath = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettingThrottlingBurstLimit = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettingThrottlingRateLimit = Nothing
  }

-- | Indicates whether the cached responses are encrypted.
apigdsdmsCacheDataEncrypted :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe (Val Bool'))
apigdsdmsCacheDataEncrypted = lens _aPIGatewayDeploymentStageDescriptionMethodSettingCacheDataEncrypted (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingCacheDataEncrypted = a })

-- | The time-to-live (TTL) period, in seconds, that specifies how long API
-- Gateway caches responses.
apigdsdmsCacheTtlInSeconds :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe (Val Integer'))
apigdsdmsCacheTtlInSeconds = lens _aPIGatewayDeploymentStageDescriptionMethodSettingCacheTtlInSeconds (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingCacheTtlInSeconds = a })

-- | Indicates whether responses are cached and returned for requests. You
-- must enable a cache cluster on the stage to cache responses. For more
-- information, see Enable API Gateway Caching in a Stage to Enhance API
-- Performance in the API Gateway Developer Guide.
apigdsdmsCachingEnabled :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe (Val Bool'))
apigdsdmsCachingEnabled = lens _aPIGatewayDeploymentStageDescriptionMethodSettingCachingEnabled (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingCachingEnabled = a })

-- | Indicates whether data trace logging is enabled for methods in the stage.
-- API Gateway pushes these logs to Amazon CloudWatch Logs.
apigdsdmsDataTraceEnabled :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe (Val Bool'))
apigdsdmsDataTraceEnabled = lens _aPIGatewayDeploymentStageDescriptionMethodSettingDataTraceEnabled (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingDataTraceEnabled = a })

-- | The HTTP method.
apigdsdmsHttpMethod :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe (Val Text))
apigdsdmsHttpMethod = lens _aPIGatewayDeploymentStageDescriptionMethodSettingHttpMethod (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingHttpMethod = a })

-- | The logging level for this method. For valid values, see the loggingLevel
-- property of the Stage resource in the Amazon API Gateway API Reference.
apigdsdmsLoggingLevel :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe (Val Text))
apigdsdmsLoggingLevel = lens _aPIGatewayDeploymentStageDescriptionMethodSettingLoggingLevel (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingLoggingLevel = a })

-- | Indicates whether Amazon CloudWatch metrics are enabled for methods in
-- the stage.
apigdsdmsMetricsEnabled :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe (Val Bool'))
apigdsdmsMetricsEnabled = lens _aPIGatewayDeploymentStageDescriptionMethodSettingMetricsEnabled (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingMetricsEnabled = a })

-- | The resource path for this method. Forward slashes (/) are encoded as ~1
-- and the initial slash must include a forward slash. For example, the path
-- value /resource/subresource must be encoded as /~1resource~1subresource. To
-- specify the root path, use only a slash (/).
apigdsdmsResourcePath :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe (Val Text))
apigdsdmsResourcePath = lens _aPIGatewayDeploymentStageDescriptionMethodSettingResourcePath (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingResourcePath = a })

-- | The number of burst requests per second that API Gateway permits across
-- all APIs, stages, and methods in your AWS account. For more information,
-- see Manage API Request Throttling in the API Gateway Developer Guide.
apigdsdmsThrottlingBurstLimit :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe (Val Integer'))
apigdsdmsThrottlingBurstLimit = lens _aPIGatewayDeploymentStageDescriptionMethodSettingThrottlingBurstLimit (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingThrottlingBurstLimit = a })

-- | The number of steady-state requests per second that API Gateway permits
-- across all APIs, stages, and methods in your AWS account. For more
-- information, see Manage API Request Throttling in the API Gateway Developer
-- Guide.
apigdsdmsThrottlingRateLimit :: Lens' APIGatewayDeploymentStageDescriptionMethodSetting (Maybe Double')
apigdsdmsThrottlingRateLimit = lens _aPIGatewayDeploymentStageDescriptionMethodSettingThrottlingRateLimit (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettingThrottlingRateLimit = a })