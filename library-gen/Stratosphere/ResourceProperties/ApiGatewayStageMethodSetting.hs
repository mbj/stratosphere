{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html

module Stratosphere.ResourceProperties.ApiGatewayStageMethodSetting where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for ApiGatewayStageMethodSetting. See
-- | 'apiGatewayStageMethodSetting' for a more convenient constructor.
data ApiGatewayStageMethodSetting =
  ApiGatewayStageMethodSetting
  { _apiGatewayStageMethodSettingCacheDataEncrypted :: Maybe (Val Bool')
  , _apiGatewayStageMethodSettingCacheTtlInSeconds :: Maybe (Val Integer')
  , _apiGatewayStageMethodSettingCachingEnabled :: Maybe (Val Bool')
  , _apiGatewayStageMethodSettingDataTraceEnabled :: Maybe (Val Bool')
  , _apiGatewayStageMethodSettingHttpMethod :: Maybe (Val HttpMethod)
  , _apiGatewayStageMethodSettingLoggingLevel :: Maybe (Val LoggingLevel)
  , _apiGatewayStageMethodSettingMetricsEnabled :: Maybe (Val Bool')
  , _apiGatewayStageMethodSettingResourcePath :: Maybe (Val Text)
  , _apiGatewayStageMethodSettingThrottlingBurstLimit :: Maybe (Val Integer')
  , _apiGatewayStageMethodSettingThrottlingRateLimit :: Maybe (Val Double')
  } deriving (Show, Eq)

instance ToJSON ApiGatewayStageMethodSetting where
  toJSON ApiGatewayStageMethodSetting{..} =
    object
    [ "CacheDataEncrypted" .= _apiGatewayStageMethodSettingCacheDataEncrypted
    , "CacheTtlInSeconds" .= _apiGatewayStageMethodSettingCacheTtlInSeconds
    , "CachingEnabled" .= _apiGatewayStageMethodSettingCachingEnabled
    , "DataTraceEnabled" .= _apiGatewayStageMethodSettingDataTraceEnabled
    , "HttpMethod" .= _apiGatewayStageMethodSettingHttpMethod
    , "LoggingLevel" .= _apiGatewayStageMethodSettingLoggingLevel
    , "MetricsEnabled" .= _apiGatewayStageMethodSettingMetricsEnabled
    , "ResourcePath" .= _apiGatewayStageMethodSettingResourcePath
    , "ThrottlingBurstLimit" .= _apiGatewayStageMethodSettingThrottlingBurstLimit
    , "ThrottlingRateLimit" .= _apiGatewayStageMethodSettingThrottlingRateLimit
    ]

instance FromJSON ApiGatewayStageMethodSetting where
  parseJSON (Object obj) =
    ApiGatewayStageMethodSetting <$>
      obj .: "CacheDataEncrypted" <*>
      obj .: "CacheTtlInSeconds" <*>
      obj .: "CachingEnabled" <*>
      obj .: "DataTraceEnabled" <*>
      obj .: "HttpMethod" <*>
      obj .: "LoggingLevel" <*>
      obj .: "MetricsEnabled" <*>
      obj .: "ResourcePath" <*>
      obj .: "ThrottlingBurstLimit" <*>
      obj .: "ThrottlingRateLimit"
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayStageMethodSetting' containing required fields
-- | as arguments.
apiGatewayStageMethodSetting
  :: ApiGatewayStageMethodSetting
apiGatewayStageMethodSetting  =
  ApiGatewayStageMethodSetting
  { _apiGatewayStageMethodSettingCacheDataEncrypted = Nothing
  , _apiGatewayStageMethodSettingCacheTtlInSeconds = Nothing
  , _apiGatewayStageMethodSettingCachingEnabled = Nothing
  , _apiGatewayStageMethodSettingDataTraceEnabled = Nothing
  , _apiGatewayStageMethodSettingHttpMethod = Nothing
  , _apiGatewayStageMethodSettingLoggingLevel = Nothing
  , _apiGatewayStageMethodSettingMetricsEnabled = Nothing
  , _apiGatewayStageMethodSettingResourcePath = Nothing
  , _apiGatewayStageMethodSettingThrottlingBurstLimit = Nothing
  , _apiGatewayStageMethodSettingThrottlingRateLimit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-cachedataencrypted
agsmsCacheDataEncrypted :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Bool'))
agsmsCacheDataEncrypted = lens _apiGatewayStageMethodSettingCacheDataEncrypted (\s a -> s { _apiGatewayStageMethodSettingCacheDataEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-cachettlinseconds
agsmsCacheTtlInSeconds :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Integer'))
agsmsCacheTtlInSeconds = lens _apiGatewayStageMethodSettingCacheTtlInSeconds (\s a -> s { _apiGatewayStageMethodSettingCacheTtlInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-cachingenabled
agsmsCachingEnabled :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Bool'))
agsmsCachingEnabled = lens _apiGatewayStageMethodSettingCachingEnabled (\s a -> s { _apiGatewayStageMethodSettingCachingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-datatraceenabled
agsmsDataTraceEnabled :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Bool'))
agsmsDataTraceEnabled = lens _apiGatewayStageMethodSettingDataTraceEnabled (\s a -> s { _apiGatewayStageMethodSettingDataTraceEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-httpmethod
agsmsHttpMethod :: Lens' ApiGatewayStageMethodSetting (Maybe (Val HttpMethod))
agsmsHttpMethod = lens _apiGatewayStageMethodSettingHttpMethod (\s a -> s { _apiGatewayStageMethodSettingHttpMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-logginglevel
agsmsLoggingLevel :: Lens' ApiGatewayStageMethodSetting (Maybe (Val LoggingLevel))
agsmsLoggingLevel = lens _apiGatewayStageMethodSettingLoggingLevel (\s a -> s { _apiGatewayStageMethodSettingLoggingLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-metricsenabled
agsmsMetricsEnabled :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Bool'))
agsmsMetricsEnabled = lens _apiGatewayStageMethodSettingMetricsEnabled (\s a -> s { _apiGatewayStageMethodSettingMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-resourcepath
agsmsResourcePath :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Text))
agsmsResourcePath = lens _apiGatewayStageMethodSettingResourcePath (\s a -> s { _apiGatewayStageMethodSettingResourcePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-throttlingburstlimit
agsmsThrottlingBurstLimit :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Integer'))
agsmsThrottlingBurstLimit = lens _apiGatewayStageMethodSettingThrottlingBurstLimit (\s a -> s { _apiGatewayStageMethodSettingThrottlingBurstLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-throttlingratelimit
agsmsThrottlingRateLimit :: Lens' ApiGatewayStageMethodSetting (Maybe (Val Double'))
agsmsThrottlingRateLimit = lens _apiGatewayStageMethodSettingThrottlingRateLimit (\s a -> s { _apiGatewayStageMethodSettingThrottlingRateLimit = a })
