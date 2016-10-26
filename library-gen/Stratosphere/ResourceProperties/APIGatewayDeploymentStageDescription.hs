{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | StageDescription is a property of the AWS::ApiGateway::Deployment
-- resource that configures an Amazon API Gateway (API Gateway) deployment
-- stage.

module Stratosphere.ResourceProperties.APIGatewayDeploymentStageDescription where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.APIGatewayDeploymentStageDescriptionMethodSetting

-- | Full data type definition for APIGatewayDeploymentStageDescription. See
-- 'apiGatewayDeploymentStageDescription' for a more convenient constructor.
data APIGatewayDeploymentStageDescription =
  APIGatewayDeploymentStageDescription
  { _aPIGatewayDeploymentStageDescriptionCacheClusterEnabled :: Maybe (Val Bool')
  , _aPIGatewayDeploymentStageDescriptionCacheClusterSize :: Maybe (Val Text)
  , _aPIGatewayDeploymentStageDescriptionCacheDataEncrypted :: Maybe (Val Bool')
  , _aPIGatewayDeploymentStageDescriptionCacheTtlInSeconds :: Maybe (Val Integer')
  , _aPIGatewayDeploymentStageDescriptionCachingEnabled :: Maybe (Val Bool')
  , _aPIGatewayDeploymentStageDescriptionClientCertificateId :: Maybe (Val Text)
  , _aPIGatewayDeploymentStageDescriptionDataTraceEnabled :: Maybe (Val Bool')
  , _aPIGatewayDeploymentStageDescriptionDescription :: Maybe (Val Text)
  , _aPIGatewayDeploymentStageDescriptionLoggingLevel :: Maybe (Val Text)
  , _aPIGatewayDeploymentStageDescriptionMethodSettings :: Maybe APIGatewayDeploymentStageDescriptionMethodSetting
  , _aPIGatewayDeploymentStageDescriptionMetricsEnabled :: Maybe (Val Bool')
  , _aPIGatewayDeploymentStageDescriptionStageName :: Maybe (Val Text)
  , _aPIGatewayDeploymentStageDescriptionThrottlingBurstLimit :: Maybe (Val Integer')
  , _aPIGatewayDeploymentStageDescriptionThrottlingRateLimit :: Maybe Double'
  , _aPIGatewayDeploymentStageDescriptionVariables :: Maybe Object
  } deriving (Show, Generic)

instance ToJSON APIGatewayDeploymentStageDescription where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

instance FromJSON APIGatewayDeploymentStageDescription where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

-- | Constructor for 'APIGatewayDeploymentStageDescription' containing
-- required fields as arguments.
apiGatewayDeploymentStageDescription
  :: APIGatewayDeploymentStageDescription
apiGatewayDeploymentStageDescription  =
  APIGatewayDeploymentStageDescription
  { _aPIGatewayDeploymentStageDescriptionCacheClusterEnabled = Nothing
  , _aPIGatewayDeploymentStageDescriptionCacheClusterSize = Nothing
  , _aPIGatewayDeploymentStageDescriptionCacheDataEncrypted = Nothing
  , _aPIGatewayDeploymentStageDescriptionCacheTtlInSeconds = Nothing
  , _aPIGatewayDeploymentStageDescriptionCachingEnabled = Nothing
  , _aPIGatewayDeploymentStageDescriptionClientCertificateId = Nothing
  , _aPIGatewayDeploymentStageDescriptionDataTraceEnabled = Nothing
  , _aPIGatewayDeploymentStageDescriptionDescription = Nothing
  , _aPIGatewayDeploymentStageDescriptionLoggingLevel = Nothing
  , _aPIGatewayDeploymentStageDescriptionMethodSettings = Nothing
  , _aPIGatewayDeploymentStageDescriptionMetricsEnabled = Nothing
  , _aPIGatewayDeploymentStageDescriptionStageName = Nothing
  , _aPIGatewayDeploymentStageDescriptionThrottlingBurstLimit = Nothing
  , _aPIGatewayDeploymentStageDescriptionThrottlingRateLimit = Nothing
  , _aPIGatewayDeploymentStageDescriptionVariables = Nothing
  }

-- | Indicates whether cache clustering is enabled for the stage.
apigdsdCacheClusterEnabled :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Bool'))
apigdsdCacheClusterEnabled = lens _aPIGatewayDeploymentStageDescriptionCacheClusterEnabled (\s a -> s { _aPIGatewayDeploymentStageDescriptionCacheClusterEnabled = a })

-- | The size of the stage's cache cluster.
apigdsdCacheClusterSize :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Text))
apigdsdCacheClusterSize = lens _aPIGatewayDeploymentStageDescriptionCacheClusterSize (\s a -> s { _aPIGatewayDeploymentStageDescriptionCacheClusterSize = a })

-- | Indicates whether the cached responses are encrypted.
apigdsdCacheDataEncrypted :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Bool'))
apigdsdCacheDataEncrypted = lens _aPIGatewayDeploymentStageDescriptionCacheDataEncrypted (\s a -> s { _aPIGatewayDeploymentStageDescriptionCacheDataEncrypted = a })

-- | The time-to-live (TTL) period, in seconds, that specifies how long API
-- Gateway caches responses.
apigdsdCacheTtlInSeconds :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Integer'))
apigdsdCacheTtlInSeconds = lens _aPIGatewayDeploymentStageDescriptionCacheTtlInSeconds (\s a -> s { _aPIGatewayDeploymentStageDescriptionCacheTtlInSeconds = a })

-- | Indicates whether responses are cached and returned for requests. You
-- must enable a cache cluster on the stage to cache responses. For more
-- information, see Enable API Gateway Caching in a Stage to Enhance API
-- Performance in the API Gateway Developer Guide.
apigdsdCachingEnabled :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Bool'))
apigdsdCachingEnabled = lens _aPIGatewayDeploymentStageDescriptionCachingEnabled (\s a -> s { _aPIGatewayDeploymentStageDescriptionCachingEnabled = a })

-- | The identifier of the client certificate that API Gateway uses to call
-- your integration endpoints in the stage.
apigdsdClientCertificateId :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Text))
apigdsdClientCertificateId = lens _aPIGatewayDeploymentStageDescriptionClientCertificateId (\s a -> s { _aPIGatewayDeploymentStageDescriptionClientCertificateId = a })

-- | Indicates whether data trace logging is enabled for methods in the stage.
-- API Gateway pushes these logs to Amazon CloudWatch Logs.
apigdsdDataTraceEnabled :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Bool'))
apigdsdDataTraceEnabled = lens _aPIGatewayDeploymentStageDescriptionDataTraceEnabled (\s a -> s { _aPIGatewayDeploymentStageDescriptionDataTraceEnabled = a })

-- | A description of the purpose of the stage.
apigdsdDescription :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Text))
apigdsdDescription = lens _aPIGatewayDeploymentStageDescriptionDescription (\s a -> s { _aPIGatewayDeploymentStageDescriptionDescription = a })

-- | The logging level for this method. For valid values, see the loggingLevel
-- property of the Stage resource in the Amazon API Gateway API Reference.
apigdsdLoggingLevel :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Text))
apigdsdLoggingLevel = lens _aPIGatewayDeploymentStageDescriptionLoggingLevel (\s a -> s { _aPIGatewayDeploymentStageDescriptionLoggingLevel = a })

-- | Configures settings for all of the stage's methods.
apigdsdMethodSettings :: Lens' APIGatewayDeploymentStageDescription (Maybe APIGatewayDeploymentStageDescriptionMethodSetting)
apigdsdMethodSettings = lens _aPIGatewayDeploymentStageDescriptionMethodSettings (\s a -> s { _aPIGatewayDeploymentStageDescriptionMethodSettings = a })

-- | Indicates whether Amazon CloudWatch metrics are enabled for methods in
-- the stage.
apigdsdMetricsEnabled :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Bool'))
apigdsdMetricsEnabled = lens _aPIGatewayDeploymentStageDescriptionMetricsEnabled (\s a -> s { _aPIGatewayDeploymentStageDescriptionMetricsEnabled = a })

-- | The name of the stage, which API Gateway uses as the first path segment
-- in the invoke Uniform Resource Identifier (URI).
apigdsdStageName :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Text))
apigdsdStageName = lens _aPIGatewayDeploymentStageDescriptionStageName (\s a -> s { _aPIGatewayDeploymentStageDescriptionStageName = a })

-- | The number of burst requests per second that API Gateway permits across
-- all APIs, stages, and methods in your AWS account. For more information,
-- see Manage API Request Throttling in the API Gateway Developer Guide.
apigdsdThrottlingBurstLimit :: Lens' APIGatewayDeploymentStageDescription (Maybe (Val Integer'))
apigdsdThrottlingBurstLimit = lens _aPIGatewayDeploymentStageDescriptionThrottlingBurstLimit (\s a -> s { _aPIGatewayDeploymentStageDescriptionThrottlingBurstLimit = a })

-- | The number of steady-state requests per second that API Gateway permits
-- across all APIs, stages, and methods in your AWS account. For more
-- information, see Manage API Request Throttling in the API Gateway Developer
-- Guide.
apigdsdThrottlingRateLimit :: Lens' APIGatewayDeploymentStageDescription (Maybe Double')
apigdsdThrottlingRateLimit = lens _aPIGatewayDeploymentStageDescriptionThrottlingRateLimit (\s a -> s { _aPIGatewayDeploymentStageDescriptionThrottlingRateLimit = a })

-- | A map that defines the stage variables. Variable names must consist of
-- alphanumeric characters, and the values must match the following regular
-- expression: [A-Za-z0-9-._~:/?#&amp;=,]+.
apigdsdVariables :: Lens' APIGatewayDeploymentStageDescription (Maybe Object)
apigdsdVariables = lens _aPIGatewayDeploymentStageDescriptionVariables (\s a -> s { _aPIGatewayDeploymentStageDescriptionVariables = a })