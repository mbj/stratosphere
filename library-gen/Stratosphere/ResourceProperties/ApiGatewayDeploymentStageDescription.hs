{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html

module Stratosphere.ResourceProperties.ApiGatewayDeploymentStageDescription where

import Stratosphere.ResourceImports
import Stratosphere.Types
import Stratosphere.ResourceProperties.ApiGatewayDeploymentAccessLogSetting
import Stratosphere.ResourceProperties.ApiGatewayDeploymentCanarySetting
import Stratosphere.ResourceProperties.ApiGatewayDeploymentMethodSetting
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ApiGatewayDeploymentStageDescription. See
-- 'apiGatewayDeploymentStageDescription' for a more convenient constructor.
data ApiGatewayDeploymentStageDescription =
  ApiGatewayDeploymentStageDescription
  { _apiGatewayDeploymentStageDescriptionAccessLogSetting :: Maybe ApiGatewayDeploymentAccessLogSetting
  , _apiGatewayDeploymentStageDescriptionCacheClusterEnabled :: Maybe (Val Bool)
  , _apiGatewayDeploymentStageDescriptionCacheClusterSize :: Maybe (Val Text)
  , _apiGatewayDeploymentStageDescriptionCacheDataEncrypted :: Maybe (Val Bool)
  , _apiGatewayDeploymentStageDescriptionCacheTtlInSeconds :: Maybe (Val Integer)
  , _apiGatewayDeploymentStageDescriptionCachingEnabled :: Maybe (Val Bool)
  , _apiGatewayDeploymentStageDescriptionCanarySetting :: Maybe ApiGatewayDeploymentCanarySetting
  , _apiGatewayDeploymentStageDescriptionClientCertificateId :: Maybe (Val Text)
  , _apiGatewayDeploymentStageDescriptionDataTraceEnabled :: Maybe (Val Bool)
  , _apiGatewayDeploymentStageDescriptionDescription :: Maybe (Val Text)
  , _apiGatewayDeploymentStageDescriptionDocumentationVersion :: Maybe (Val Text)
  , _apiGatewayDeploymentStageDescriptionLoggingLevel :: Maybe (Val LoggingLevel)
  , _apiGatewayDeploymentStageDescriptionMethodSettings :: Maybe [ApiGatewayDeploymentMethodSetting]
  , _apiGatewayDeploymentStageDescriptionMetricsEnabled :: Maybe (Val Bool)
  , _apiGatewayDeploymentStageDescriptionTags :: Maybe [Tag]
  , _apiGatewayDeploymentStageDescriptionThrottlingBurstLimit :: Maybe (Val Integer)
  , _apiGatewayDeploymentStageDescriptionThrottlingRateLimit :: Maybe (Val Double)
  , _apiGatewayDeploymentStageDescriptionTracingEnabled :: Maybe (Val Bool)
  , _apiGatewayDeploymentStageDescriptionVariables :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDeploymentStageDescription where
  toJSON ApiGatewayDeploymentStageDescription{..} =
    object $
    catMaybes
    [ fmap (("AccessLogSetting",) . toJSON) _apiGatewayDeploymentStageDescriptionAccessLogSetting
    , fmap (("CacheClusterEnabled",) . toJSON . fmap Bool') _apiGatewayDeploymentStageDescriptionCacheClusterEnabled
    , fmap (("CacheClusterSize",) . toJSON) _apiGatewayDeploymentStageDescriptionCacheClusterSize
    , fmap (("CacheDataEncrypted",) . toJSON . fmap Bool') _apiGatewayDeploymentStageDescriptionCacheDataEncrypted
    , fmap (("CacheTtlInSeconds",) . toJSON . fmap Integer') _apiGatewayDeploymentStageDescriptionCacheTtlInSeconds
    , fmap (("CachingEnabled",) . toJSON . fmap Bool') _apiGatewayDeploymentStageDescriptionCachingEnabled
    , fmap (("CanarySetting",) . toJSON) _apiGatewayDeploymentStageDescriptionCanarySetting
    , fmap (("ClientCertificateId",) . toJSON) _apiGatewayDeploymentStageDescriptionClientCertificateId
    , fmap (("DataTraceEnabled",) . toJSON . fmap Bool') _apiGatewayDeploymentStageDescriptionDataTraceEnabled
    , fmap (("Description",) . toJSON) _apiGatewayDeploymentStageDescriptionDescription
    , fmap (("DocumentationVersion",) . toJSON) _apiGatewayDeploymentStageDescriptionDocumentationVersion
    , fmap (("LoggingLevel",) . toJSON) _apiGatewayDeploymentStageDescriptionLoggingLevel
    , fmap (("MethodSettings",) . toJSON) _apiGatewayDeploymentStageDescriptionMethodSettings
    , fmap (("MetricsEnabled",) . toJSON . fmap Bool') _apiGatewayDeploymentStageDescriptionMetricsEnabled
    , fmap (("Tags",) . toJSON) _apiGatewayDeploymentStageDescriptionTags
    , fmap (("ThrottlingBurstLimit",) . toJSON . fmap Integer') _apiGatewayDeploymentStageDescriptionThrottlingBurstLimit
    , fmap (("ThrottlingRateLimit",) . toJSON . fmap Double') _apiGatewayDeploymentStageDescriptionThrottlingRateLimit
    , fmap (("TracingEnabled",) . toJSON . fmap Bool') _apiGatewayDeploymentStageDescriptionTracingEnabled
    , fmap (("Variables",) . toJSON) _apiGatewayDeploymentStageDescriptionVariables
    ]

-- | Constructor for 'ApiGatewayDeploymentStageDescription' containing
-- required fields as arguments.
apiGatewayDeploymentStageDescription
  :: ApiGatewayDeploymentStageDescription
apiGatewayDeploymentStageDescription  =
  ApiGatewayDeploymentStageDescription
  { _apiGatewayDeploymentStageDescriptionAccessLogSetting = Nothing
  , _apiGatewayDeploymentStageDescriptionCacheClusterEnabled = Nothing
  , _apiGatewayDeploymentStageDescriptionCacheClusterSize = Nothing
  , _apiGatewayDeploymentStageDescriptionCacheDataEncrypted = Nothing
  , _apiGatewayDeploymentStageDescriptionCacheTtlInSeconds = Nothing
  , _apiGatewayDeploymentStageDescriptionCachingEnabled = Nothing
  , _apiGatewayDeploymentStageDescriptionCanarySetting = Nothing
  , _apiGatewayDeploymentStageDescriptionClientCertificateId = Nothing
  , _apiGatewayDeploymentStageDescriptionDataTraceEnabled = Nothing
  , _apiGatewayDeploymentStageDescriptionDescription = Nothing
  , _apiGatewayDeploymentStageDescriptionDocumentationVersion = Nothing
  , _apiGatewayDeploymentStageDescriptionLoggingLevel = Nothing
  , _apiGatewayDeploymentStageDescriptionMethodSettings = Nothing
  , _apiGatewayDeploymentStageDescriptionMetricsEnabled = Nothing
  , _apiGatewayDeploymentStageDescriptionTags = Nothing
  , _apiGatewayDeploymentStageDescriptionThrottlingBurstLimit = Nothing
  , _apiGatewayDeploymentStageDescriptionThrottlingRateLimit = Nothing
  , _apiGatewayDeploymentStageDescriptionTracingEnabled = Nothing
  , _apiGatewayDeploymentStageDescriptionVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-accesslogsetting
agdsdAccessLogSetting :: Lens' ApiGatewayDeploymentStageDescription (Maybe ApiGatewayDeploymentAccessLogSetting)
agdsdAccessLogSetting = lens _apiGatewayDeploymentStageDescriptionAccessLogSetting (\s a -> s { _apiGatewayDeploymentStageDescriptionAccessLogSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclusterenabled
agdsdCacheClusterEnabled :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Bool))
agdsdCacheClusterEnabled = lens _apiGatewayDeploymentStageDescriptionCacheClusterEnabled (\s a -> s { _apiGatewayDeploymentStageDescriptionCacheClusterEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclustersize
agdsdCacheClusterSize :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Text))
agdsdCacheClusterSize = lens _apiGatewayDeploymentStageDescriptionCacheClusterSize (\s a -> s { _apiGatewayDeploymentStageDescriptionCacheClusterSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachedataencrypted
agdsdCacheDataEncrypted :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Bool))
agdsdCacheDataEncrypted = lens _apiGatewayDeploymentStageDescriptionCacheDataEncrypted (\s a -> s { _apiGatewayDeploymentStageDescriptionCacheDataEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachettlinseconds
agdsdCacheTtlInSeconds :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Integer))
agdsdCacheTtlInSeconds = lens _apiGatewayDeploymentStageDescriptionCacheTtlInSeconds (\s a -> s { _apiGatewayDeploymentStageDescriptionCacheTtlInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachingenabled
agdsdCachingEnabled :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Bool))
agdsdCachingEnabled = lens _apiGatewayDeploymentStageDescriptionCachingEnabled (\s a -> s { _apiGatewayDeploymentStageDescriptionCachingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-canarysetting
agdsdCanarySetting :: Lens' ApiGatewayDeploymentStageDescription (Maybe ApiGatewayDeploymentCanarySetting)
agdsdCanarySetting = lens _apiGatewayDeploymentStageDescriptionCanarySetting (\s a -> s { _apiGatewayDeploymentStageDescriptionCanarySetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-clientcertificateid
agdsdClientCertificateId :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Text))
agdsdClientCertificateId = lens _apiGatewayDeploymentStageDescriptionClientCertificateId (\s a -> s { _apiGatewayDeploymentStageDescriptionClientCertificateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-datatraceenabled
agdsdDataTraceEnabled :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Bool))
agdsdDataTraceEnabled = lens _apiGatewayDeploymentStageDescriptionDataTraceEnabled (\s a -> s { _apiGatewayDeploymentStageDescriptionDataTraceEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-description
agdsdDescription :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Text))
agdsdDescription = lens _apiGatewayDeploymentStageDescriptionDescription (\s a -> s { _apiGatewayDeploymentStageDescriptionDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-documentationversion
agdsdDocumentationVersion :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Text))
agdsdDocumentationVersion = lens _apiGatewayDeploymentStageDescriptionDocumentationVersion (\s a -> s { _apiGatewayDeploymentStageDescriptionDocumentationVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-logginglevel
agdsdLoggingLevel :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val LoggingLevel))
agdsdLoggingLevel = lens _apiGatewayDeploymentStageDescriptionLoggingLevel (\s a -> s { _apiGatewayDeploymentStageDescriptionLoggingLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-methodsettings
agdsdMethodSettings :: Lens' ApiGatewayDeploymentStageDescription (Maybe [ApiGatewayDeploymentMethodSetting])
agdsdMethodSettings = lens _apiGatewayDeploymentStageDescriptionMethodSettings (\s a -> s { _apiGatewayDeploymentStageDescriptionMethodSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-metricsenabled
agdsdMetricsEnabled :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Bool))
agdsdMetricsEnabled = lens _apiGatewayDeploymentStageDescriptionMetricsEnabled (\s a -> s { _apiGatewayDeploymentStageDescriptionMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-tags
agdsdTags :: Lens' ApiGatewayDeploymentStageDescription (Maybe [Tag])
agdsdTags = lens _apiGatewayDeploymentStageDescriptionTags (\s a -> s { _apiGatewayDeploymentStageDescriptionTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingburstlimit
agdsdThrottlingBurstLimit :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Integer))
agdsdThrottlingBurstLimit = lens _apiGatewayDeploymentStageDescriptionThrottlingBurstLimit (\s a -> s { _apiGatewayDeploymentStageDescriptionThrottlingBurstLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingratelimit
agdsdThrottlingRateLimit :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Double))
agdsdThrottlingRateLimit = lens _apiGatewayDeploymentStageDescriptionThrottlingRateLimit (\s a -> s { _apiGatewayDeploymentStageDescriptionThrottlingRateLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-tracingenabled
agdsdTracingEnabled :: Lens' ApiGatewayDeploymentStageDescription (Maybe (Val Bool))
agdsdTracingEnabled = lens _apiGatewayDeploymentStageDescriptionTracingEnabled (\s a -> s { _apiGatewayDeploymentStageDescriptionTracingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-variables
agdsdVariables :: Lens' ApiGatewayDeploymentStageDescription (Maybe Object)
agdsdVariables = lens _apiGatewayDeploymentStageDescriptionVariables (\s a -> s { _apiGatewayDeploymentStageDescriptionVariables = a })
