{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html

module Stratosphere.ResourceProperties.ApiGatewayDeploymentMethodSetting where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for ApiGatewayDeploymentMethodSetting. See
-- | 'apiGatewayDeploymentMethodSetting' for a more convenient constructor.
data ApiGatewayDeploymentMethodSetting =
  ApiGatewayDeploymentMethodSetting
  { _apiGatewayDeploymentMethodSettingCacheDataEncrypted :: Maybe (Val Bool')
  , _apiGatewayDeploymentMethodSettingCacheTtlInSeconds :: Maybe (Val Integer')
  , _apiGatewayDeploymentMethodSettingCachingEnabled :: Maybe (Val Bool')
  , _apiGatewayDeploymentMethodSettingDataTraceEnabled :: Maybe (Val Bool')
  , _apiGatewayDeploymentMethodSettingHttpMethod :: Maybe (Val HttpMethod)
  , _apiGatewayDeploymentMethodSettingLoggingLevel :: Maybe (Val LoggingLevel)
  , _apiGatewayDeploymentMethodSettingMetricsEnabled :: Maybe (Val Bool')
  , _apiGatewayDeploymentMethodSettingResourcePath :: Maybe (Val Text)
  , _apiGatewayDeploymentMethodSettingThrottlingBurstLimit :: Maybe (Val Integer')
  , _apiGatewayDeploymentMethodSettingThrottlingRateLimit :: Maybe (Val Double')
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDeploymentMethodSetting where
  toJSON ApiGatewayDeploymentMethodSetting{..} =
    object
    [ "CacheDataEncrypted" .= _apiGatewayDeploymentMethodSettingCacheDataEncrypted
    , "CacheTtlInSeconds" .= _apiGatewayDeploymentMethodSettingCacheTtlInSeconds
    , "CachingEnabled" .= _apiGatewayDeploymentMethodSettingCachingEnabled
    , "DataTraceEnabled" .= _apiGatewayDeploymentMethodSettingDataTraceEnabled
    , "HttpMethod" .= _apiGatewayDeploymentMethodSettingHttpMethod
    , "LoggingLevel" .= _apiGatewayDeploymentMethodSettingLoggingLevel
    , "MetricsEnabled" .= _apiGatewayDeploymentMethodSettingMetricsEnabled
    , "ResourcePath" .= _apiGatewayDeploymentMethodSettingResourcePath
    , "ThrottlingBurstLimit" .= _apiGatewayDeploymentMethodSettingThrottlingBurstLimit
    , "ThrottlingRateLimit" .= _apiGatewayDeploymentMethodSettingThrottlingRateLimit
    ]

instance FromJSON ApiGatewayDeploymentMethodSetting where
  parseJSON (Object obj) =
    ApiGatewayDeploymentMethodSetting <$>
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

-- | Constructor for 'ApiGatewayDeploymentMethodSetting' containing required
-- | fields as arguments.
apiGatewayDeploymentMethodSetting
  :: ApiGatewayDeploymentMethodSetting
apiGatewayDeploymentMethodSetting  =
  ApiGatewayDeploymentMethodSetting
  { _apiGatewayDeploymentMethodSettingCacheDataEncrypted = Nothing
  , _apiGatewayDeploymentMethodSettingCacheTtlInSeconds = Nothing
  , _apiGatewayDeploymentMethodSettingCachingEnabled = Nothing
  , _apiGatewayDeploymentMethodSettingDataTraceEnabled = Nothing
  , _apiGatewayDeploymentMethodSettingHttpMethod = Nothing
  , _apiGatewayDeploymentMethodSettingLoggingLevel = Nothing
  , _apiGatewayDeploymentMethodSettingMetricsEnabled = Nothing
  , _apiGatewayDeploymentMethodSettingResourcePath = Nothing
  , _apiGatewayDeploymentMethodSettingThrottlingBurstLimit = Nothing
  , _apiGatewayDeploymentMethodSettingThrottlingRateLimit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-cachedataencrypted
agdmsCacheDataEncrypted :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val Bool'))
agdmsCacheDataEncrypted = lens _apiGatewayDeploymentMethodSettingCacheDataEncrypted (\s a -> s { _apiGatewayDeploymentMethodSettingCacheDataEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-cachettlinseconds
agdmsCacheTtlInSeconds :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val Integer'))
agdmsCacheTtlInSeconds = lens _apiGatewayDeploymentMethodSettingCacheTtlInSeconds (\s a -> s { _apiGatewayDeploymentMethodSettingCacheTtlInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-cachingenabled
agdmsCachingEnabled :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val Bool'))
agdmsCachingEnabled = lens _apiGatewayDeploymentMethodSettingCachingEnabled (\s a -> s { _apiGatewayDeploymentMethodSettingCachingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-datatraceenabled
agdmsDataTraceEnabled :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val Bool'))
agdmsDataTraceEnabled = lens _apiGatewayDeploymentMethodSettingDataTraceEnabled (\s a -> s { _apiGatewayDeploymentMethodSettingDataTraceEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-httpmethod
agdmsHttpMethod :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val HttpMethod))
agdmsHttpMethod = lens _apiGatewayDeploymentMethodSettingHttpMethod (\s a -> s { _apiGatewayDeploymentMethodSettingHttpMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-logginglevel
agdmsLoggingLevel :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val LoggingLevel))
agdmsLoggingLevel = lens _apiGatewayDeploymentMethodSettingLoggingLevel (\s a -> s { _apiGatewayDeploymentMethodSettingLoggingLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-metricsenabled
agdmsMetricsEnabled :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val Bool'))
agdmsMetricsEnabled = lens _apiGatewayDeploymentMethodSettingMetricsEnabled (\s a -> s { _apiGatewayDeploymentMethodSettingMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-resourcepath
agdmsResourcePath :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val Text))
agdmsResourcePath = lens _apiGatewayDeploymentMethodSettingResourcePath (\s a -> s { _apiGatewayDeploymentMethodSettingResourcePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-throttlingburstlimit
agdmsThrottlingBurstLimit :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val Integer'))
agdmsThrottlingBurstLimit = lens _apiGatewayDeploymentMethodSettingThrottlingBurstLimit (\s a -> s { _apiGatewayDeploymentMethodSettingThrottlingBurstLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-throttlingratelimit
agdmsThrottlingRateLimit :: Lens' ApiGatewayDeploymentMethodSetting (Maybe (Val Double'))
agdmsThrottlingRateLimit = lens _apiGatewayDeploymentMethodSettingThrottlingRateLimit (\s a -> s { _apiGatewayDeploymentMethodSettingThrottlingRateLimit = a })
