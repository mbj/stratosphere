{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | MethodSetting is a property of the AWS::ApiGateway::Stage resource that
-- configures settings for all methods in an Amazon API Gateway (API Gateway)
-- stage.

module Stratosphere.ResourceProperties.ApiGatewayStageMethodSetting where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayStageMethodSetting. See
-- 'apiGatewayStageMethodSetting' for a more convenient constructor.
data ApiGatewayStageMethodSetting =
  ApiGatewayStageMethodSetting
  { _apiGatewayStageMethodSettingCacheDataEncrypted :: Maybe (Val Bool')
  , _apiGatewayStageMethodSettingCacheTtlInSeconds :: Maybe (Val Integer')
  , _apiGatewayStageMethodSettingCachingEnabled :: Maybe (Val Bool')
  , _apiGatewayStageMethodSettingDataTraceEnabled :: Maybe (Val Bool')
  , _apiGatewayStageMethodSettingHttpMethod :: Val Text
  , _apiGatewayStageMethodSettingLoggingLevel :: Maybe (Val Text)
  , _apiGatewayStageMethodSettingMetricsEnabled :: Maybe (Val Bool')
  , _apiGatewayStageMethodSettingResourcePath :: Val Text
  , _apiGatewayStageMethodSettingThrottlingBurstLimit :: Maybe (Val Integer')
  , _apiGatewayStageMethodSettingThrottlingRateLimit :: Maybe Double'
  } deriving (Show, Generic)

instance ToJSON ApiGatewayStageMethodSetting where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON ApiGatewayStageMethodSetting where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'ApiGatewayStageMethodSetting' containing required fields
-- as arguments.
apiGatewayStageMethodSetting
  :: Val Text -- ^ 'agsmsHttpMethod'
  -> Val Text -- ^ 'agsmsResourcePath'
  -> ApiGatewayStageMethodSetting
apiGatewayStageMethodSetting httpMethodarg resourcePatharg =
  ApiGatewayStageMethodSetting
  { _apiGatewayStageMethodSettingCacheDataEncrypted = Nothing
  , _apiGatewayStageMethodSettingCacheTtlInSeconds = Nothing
  , _apiGatewayStageMethodSettingCachingEnabled = Nothing
  , _apiGatewayStageMethodSettingDataTraceEnabled = Nothing
  , _apiGatewayStageMethodSettingHttpMethod = httpMethodarg
  , _apiGatewayStageMethodSettingLoggingLevel = Nothing
  , _apiGatewayStageMethodSettingMetricsEnabled = Nothing
  , _apiGatewayStageMethodSettingResourcePath = resourcePatharg
  , _apiGatewayStageMethodSettingThrottlingBurstLimit = Nothing
  , _apiGatewayStageMethodSettingThrottlingRateLimit = Nothing
  }

-- | Indicates whether the cached responses are encrypted.
agsmsCacheDataEncrypted :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Bool'))
agsmsCacheDataEncrypted = lens _apiGatewayStageMethodSettingCacheDataEncrypted (\s a -> s { _apiGatewayStageMethodSettingCacheDataEncrypted = a })

-- | The time-to-live (TTL) period, in seconds, that specifies how long API
-- Gateway caches responses.
agsmsCacheTtlInSeconds :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Integer'))
agsmsCacheTtlInSeconds = lens _apiGatewayStageMethodSettingCacheTtlInSeconds (\s a -> s { _apiGatewayStageMethodSettingCacheTtlInSeconds = a })

-- | Indicates whether responses are cached and returned for requests. You
-- must enable a cache cluster on the stage to cache responses.
agsmsCachingEnabled :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Bool'))
agsmsCachingEnabled = lens _apiGatewayStageMethodSettingCachingEnabled (\s a -> s { _apiGatewayStageMethodSettingCachingEnabled = a })

-- | Indicates whether data trace logging is enabled for methods in the stage.
-- API Gateway pushes these logs to Amazon CloudWatch Logs.
agsmsDataTraceEnabled :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Bool'))
agsmsDataTraceEnabled = lens _apiGatewayStageMethodSettingDataTraceEnabled (\s a -> s { _apiGatewayStageMethodSettingDataTraceEnabled = a })

-- | The HTTP method.
agsmsHttpMethod :: Lens' ApiGatewayStageMethodSetting (Val Text)
agsmsHttpMethod = lens _apiGatewayStageMethodSettingHttpMethod (\s a -> s { _apiGatewayStageMethodSettingHttpMethod = a })

-- | The logging level for this method. For valid values, see the loggingLevel
-- property of the Stage resource in the Amazon API Gateway API Reference.
agsmsLoggingLevel :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Text))
agsmsLoggingLevel = lens _apiGatewayStageMethodSettingLoggingLevel (\s a -> s { _apiGatewayStageMethodSettingLoggingLevel = a })

-- | Indicates whether Amazon CloudWatch metrics are enabled for methods in
-- the stage.
agsmsMetricsEnabled :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Bool'))
agsmsMetricsEnabled = lens _apiGatewayStageMethodSettingMetricsEnabled (\s a -> s { _apiGatewayStageMethodSettingMetricsEnabled = a })

-- | The resource path for this method. Forward slashes (/) are encoded as ~1
-- and the initial slash must include a forward slash. For example, the path
-- value /resource/subresource must be encoded as /~1resource~1subresource. To
-- specify the root path, use only a slash (/).
agsmsResourcePath :: Lens' ApiGatewayStageMethodSetting (Val Text)
agsmsResourcePath = lens _apiGatewayStageMethodSettingResourcePath (\s a -> s { _apiGatewayStageMethodSettingResourcePath = a })

-- | The number of burst requests per second that API Gateway permits across
-- all APIs, stages, and methods in your AWS account. For more information,
-- see Manage API Request Throttling in the API Gateway Developer Guide.
agsmsThrottlingBurstLimit :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Integer'))
agsmsThrottlingBurstLimit = lens _apiGatewayStageMethodSettingThrottlingBurstLimit (\s a -> s { _apiGatewayStageMethodSettingThrottlingBurstLimit = a })

-- | The number of steady-state requests per second that API Gateway permits
-- across all APIs, stages, and methods in your AWS account. For more
-- information, see Manage API Request Throttling in the API Gateway Developer
-- Guide.
agsmsThrottlingRateLimit :: Lens' ApiGatewayStageMethodSetting (Maybe Double')
agsmsThrottlingRateLimit = lens _apiGatewayStageMethodSettingThrottlingRateLimit (\s a -> s { _apiGatewayStageMethodSettingThrottlingRateLimit = a })