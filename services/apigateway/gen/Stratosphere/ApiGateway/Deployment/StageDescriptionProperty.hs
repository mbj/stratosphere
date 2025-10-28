module Stratosphere.ApiGateway.Deployment.StageDescriptionProperty (
        module Exports, StageDescriptionProperty(..),
        mkStageDescriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.Deployment.AccessLogSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.Deployment.CanarySettingProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.Deployment.MethodSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StageDescriptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html>
    StageDescriptionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-accesslogsetting>
                              accessLogSetting :: (Prelude.Maybe AccessLogSettingProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclusterenabled>
                              cacheClusterEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclustersize>
                              cacheClusterSize :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachedataencrypted>
                              cacheDataEncrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachettlinseconds>
                              cacheTtlInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachingenabled>
                              cachingEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-canarysetting>
                              canarySetting :: (Prelude.Maybe CanarySettingProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-clientcertificateid>
                              clientCertificateId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-datatraceenabled>
                              dataTraceEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-documentationversion>
                              documentationVersion :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-logginglevel>
                              loggingLevel :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-methodsettings>
                              methodSettings :: (Prelude.Maybe [MethodSettingProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-metricsenabled>
                              metricsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-tags>
                              tags :: (Prelude.Maybe [Tag]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingburstlimit>
                              throttlingBurstLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingratelimit>
                              throttlingRateLimit :: (Prelude.Maybe (Value Prelude.Double)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-tracingenabled>
                              tracingEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-variables>
                              variables :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStageDescriptionProperty :: StageDescriptionProperty
mkStageDescriptionProperty
  = StageDescriptionProperty
      {haddock_workaround_ = (), accessLogSetting = Prelude.Nothing,
       cacheClusterEnabled = Prelude.Nothing,
       cacheClusterSize = Prelude.Nothing,
       cacheDataEncrypted = Prelude.Nothing,
       cacheTtlInSeconds = Prelude.Nothing,
       cachingEnabled = Prelude.Nothing, canarySetting = Prelude.Nothing,
       clientCertificateId = Prelude.Nothing,
       dataTraceEnabled = Prelude.Nothing, description = Prelude.Nothing,
       documentationVersion = Prelude.Nothing,
       loggingLevel = Prelude.Nothing, methodSettings = Prelude.Nothing,
       metricsEnabled = Prelude.Nothing, tags = Prelude.Nothing,
       throttlingBurstLimit = Prelude.Nothing,
       throttlingRateLimit = Prelude.Nothing,
       tracingEnabled = Prelude.Nothing, variables = Prelude.Nothing}
instance ToResourceProperties StageDescriptionProperty where
  toResourceProperties StageDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Deployment.StageDescription",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessLogSetting" Prelude.<$> accessLogSetting,
                            (JSON..=) "CacheClusterEnabled" Prelude.<$> cacheClusterEnabled,
                            (JSON..=) "CacheClusterSize" Prelude.<$> cacheClusterSize,
                            (JSON..=) "CacheDataEncrypted" Prelude.<$> cacheDataEncrypted,
                            (JSON..=) "CacheTtlInSeconds" Prelude.<$> cacheTtlInSeconds,
                            (JSON..=) "CachingEnabled" Prelude.<$> cachingEnabled,
                            (JSON..=) "CanarySetting" Prelude.<$> canarySetting,
                            (JSON..=) "ClientCertificateId" Prelude.<$> clientCertificateId,
                            (JSON..=) "DataTraceEnabled" Prelude.<$> dataTraceEnabled,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DocumentationVersion" Prelude.<$> documentationVersion,
                            (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
                            (JSON..=) "MethodSettings" Prelude.<$> methodSettings,
                            (JSON..=) "MetricsEnabled" Prelude.<$> metricsEnabled,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "ThrottlingBurstLimit" Prelude.<$> throttlingBurstLimit,
                            (JSON..=) "ThrottlingRateLimit" Prelude.<$> throttlingRateLimit,
                            (JSON..=) "TracingEnabled" Prelude.<$> tracingEnabled,
                            (JSON..=) "Variables" Prelude.<$> variables])}
instance JSON.ToJSON StageDescriptionProperty where
  toJSON StageDescriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessLogSetting" Prelude.<$> accessLogSetting,
               (JSON..=) "CacheClusterEnabled" Prelude.<$> cacheClusterEnabled,
               (JSON..=) "CacheClusterSize" Prelude.<$> cacheClusterSize,
               (JSON..=) "CacheDataEncrypted" Prelude.<$> cacheDataEncrypted,
               (JSON..=) "CacheTtlInSeconds" Prelude.<$> cacheTtlInSeconds,
               (JSON..=) "CachingEnabled" Prelude.<$> cachingEnabled,
               (JSON..=) "CanarySetting" Prelude.<$> canarySetting,
               (JSON..=) "ClientCertificateId" Prelude.<$> clientCertificateId,
               (JSON..=) "DataTraceEnabled" Prelude.<$> dataTraceEnabled,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DocumentationVersion" Prelude.<$> documentationVersion,
               (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
               (JSON..=) "MethodSettings" Prelude.<$> methodSettings,
               (JSON..=) "MetricsEnabled" Prelude.<$> metricsEnabled,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "ThrottlingBurstLimit" Prelude.<$> throttlingBurstLimit,
               (JSON..=) "ThrottlingRateLimit" Prelude.<$> throttlingRateLimit,
               (JSON..=) "TracingEnabled" Prelude.<$> tracingEnabled,
               (JSON..=) "Variables" Prelude.<$> variables]))
instance Property "AccessLogSetting" StageDescriptionProperty where
  type PropertyType "AccessLogSetting" StageDescriptionProperty = AccessLogSettingProperty
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {accessLogSetting = Prelude.pure newValue, ..}
instance Property "CacheClusterEnabled" StageDescriptionProperty where
  type PropertyType "CacheClusterEnabled" StageDescriptionProperty = Value Prelude.Bool
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {cacheClusterEnabled = Prelude.pure newValue, ..}
instance Property "CacheClusterSize" StageDescriptionProperty where
  type PropertyType "CacheClusterSize" StageDescriptionProperty = Value Prelude.Text
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {cacheClusterSize = Prelude.pure newValue, ..}
instance Property "CacheDataEncrypted" StageDescriptionProperty where
  type PropertyType "CacheDataEncrypted" StageDescriptionProperty = Value Prelude.Bool
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {cacheDataEncrypted = Prelude.pure newValue, ..}
instance Property "CacheTtlInSeconds" StageDescriptionProperty where
  type PropertyType "CacheTtlInSeconds" StageDescriptionProperty = Value Prelude.Integer
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {cacheTtlInSeconds = Prelude.pure newValue, ..}
instance Property "CachingEnabled" StageDescriptionProperty where
  type PropertyType "CachingEnabled" StageDescriptionProperty = Value Prelude.Bool
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {cachingEnabled = Prelude.pure newValue, ..}
instance Property "CanarySetting" StageDescriptionProperty where
  type PropertyType "CanarySetting" StageDescriptionProperty = CanarySettingProperty
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {canarySetting = Prelude.pure newValue, ..}
instance Property "ClientCertificateId" StageDescriptionProperty where
  type PropertyType "ClientCertificateId" StageDescriptionProperty = Value Prelude.Text
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {clientCertificateId = Prelude.pure newValue, ..}
instance Property "DataTraceEnabled" StageDescriptionProperty where
  type PropertyType "DataTraceEnabled" StageDescriptionProperty = Value Prelude.Bool
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {dataTraceEnabled = Prelude.pure newValue, ..}
instance Property "Description" StageDescriptionProperty where
  type PropertyType "Description" StageDescriptionProperty = Value Prelude.Text
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {description = Prelude.pure newValue, ..}
instance Property "DocumentationVersion" StageDescriptionProperty where
  type PropertyType "DocumentationVersion" StageDescriptionProperty = Value Prelude.Text
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {documentationVersion = Prelude.pure newValue, ..}
instance Property "LoggingLevel" StageDescriptionProperty where
  type PropertyType "LoggingLevel" StageDescriptionProperty = Value Prelude.Text
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {loggingLevel = Prelude.pure newValue, ..}
instance Property "MethodSettings" StageDescriptionProperty where
  type PropertyType "MethodSettings" StageDescriptionProperty = [MethodSettingProperty]
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {methodSettings = Prelude.pure newValue, ..}
instance Property "MetricsEnabled" StageDescriptionProperty where
  type PropertyType "MetricsEnabled" StageDescriptionProperty = Value Prelude.Bool
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {metricsEnabled = Prelude.pure newValue, ..}
instance Property "Tags" StageDescriptionProperty where
  type PropertyType "Tags" StageDescriptionProperty = [Tag]
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty {tags = Prelude.pure newValue, ..}
instance Property "ThrottlingBurstLimit" StageDescriptionProperty where
  type PropertyType "ThrottlingBurstLimit" StageDescriptionProperty = Value Prelude.Integer
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {throttlingBurstLimit = Prelude.pure newValue, ..}
instance Property "ThrottlingRateLimit" StageDescriptionProperty where
  type PropertyType "ThrottlingRateLimit" StageDescriptionProperty = Value Prelude.Double
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {throttlingRateLimit = Prelude.pure newValue, ..}
instance Property "TracingEnabled" StageDescriptionProperty where
  type PropertyType "TracingEnabled" StageDescriptionProperty = Value Prelude.Bool
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty
        {tracingEnabled = Prelude.pure newValue, ..}
instance Property "Variables" StageDescriptionProperty where
  type PropertyType "Variables" StageDescriptionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue StageDescriptionProperty {..}
    = StageDescriptionProperty {variables = Prelude.pure newValue, ..}