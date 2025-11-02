module Stratosphere.ApiGateway.Stage.MethodSettingProperty (
        MethodSettingProperty(..), mkMethodSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MethodSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html>
    MethodSettingProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-cachedataencrypted>
                           cacheDataEncrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-cachettlinseconds>
                           cacheTtlInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-cachingenabled>
                           cachingEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-datatraceenabled>
                           dataTraceEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-httpmethod>
                           httpMethod :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-logginglevel>
                           loggingLevel :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-metricsenabled>
                           metricsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-resourcepath>
                           resourcePath :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-throttlingburstlimit>
                           throttlingBurstLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-throttlingratelimit>
                           throttlingRateLimit :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMethodSettingProperty :: MethodSettingProperty
mkMethodSettingProperty
  = MethodSettingProperty
      {haddock_workaround_ = (), cacheDataEncrypted = Prelude.Nothing,
       cacheTtlInSeconds = Prelude.Nothing,
       cachingEnabled = Prelude.Nothing,
       dataTraceEnabled = Prelude.Nothing, httpMethod = Prelude.Nothing,
       loggingLevel = Prelude.Nothing, metricsEnabled = Prelude.Nothing,
       resourcePath = Prelude.Nothing,
       throttlingBurstLimit = Prelude.Nothing,
       throttlingRateLimit = Prelude.Nothing}
instance ToResourceProperties MethodSettingProperty where
  toResourceProperties MethodSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Stage.MethodSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CacheDataEncrypted" Prelude.<$> cacheDataEncrypted,
                            (JSON..=) "CacheTtlInSeconds" Prelude.<$> cacheTtlInSeconds,
                            (JSON..=) "CachingEnabled" Prelude.<$> cachingEnabled,
                            (JSON..=) "DataTraceEnabled" Prelude.<$> dataTraceEnabled,
                            (JSON..=) "HttpMethod" Prelude.<$> httpMethod,
                            (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
                            (JSON..=) "MetricsEnabled" Prelude.<$> metricsEnabled,
                            (JSON..=) "ResourcePath" Prelude.<$> resourcePath,
                            (JSON..=) "ThrottlingBurstLimit" Prelude.<$> throttlingBurstLimit,
                            (JSON..=) "ThrottlingRateLimit" Prelude.<$> throttlingRateLimit])}
instance JSON.ToJSON MethodSettingProperty where
  toJSON MethodSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CacheDataEncrypted" Prelude.<$> cacheDataEncrypted,
               (JSON..=) "CacheTtlInSeconds" Prelude.<$> cacheTtlInSeconds,
               (JSON..=) "CachingEnabled" Prelude.<$> cachingEnabled,
               (JSON..=) "DataTraceEnabled" Prelude.<$> dataTraceEnabled,
               (JSON..=) "HttpMethod" Prelude.<$> httpMethod,
               (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
               (JSON..=) "MetricsEnabled" Prelude.<$> metricsEnabled,
               (JSON..=) "ResourcePath" Prelude.<$> resourcePath,
               (JSON..=) "ThrottlingBurstLimit" Prelude.<$> throttlingBurstLimit,
               (JSON..=) "ThrottlingRateLimit" Prelude.<$> throttlingRateLimit]))
instance Property "CacheDataEncrypted" MethodSettingProperty where
  type PropertyType "CacheDataEncrypted" MethodSettingProperty = Value Prelude.Bool
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty
        {cacheDataEncrypted = Prelude.pure newValue, ..}
instance Property "CacheTtlInSeconds" MethodSettingProperty where
  type PropertyType "CacheTtlInSeconds" MethodSettingProperty = Value Prelude.Integer
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty
        {cacheTtlInSeconds = Prelude.pure newValue, ..}
instance Property "CachingEnabled" MethodSettingProperty where
  type PropertyType "CachingEnabled" MethodSettingProperty = Value Prelude.Bool
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty
        {cachingEnabled = Prelude.pure newValue, ..}
instance Property "DataTraceEnabled" MethodSettingProperty where
  type PropertyType "DataTraceEnabled" MethodSettingProperty = Value Prelude.Bool
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty
        {dataTraceEnabled = Prelude.pure newValue, ..}
instance Property "HttpMethod" MethodSettingProperty where
  type PropertyType "HttpMethod" MethodSettingProperty = Value Prelude.Text
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty {httpMethod = Prelude.pure newValue, ..}
instance Property "LoggingLevel" MethodSettingProperty where
  type PropertyType "LoggingLevel" MethodSettingProperty = Value Prelude.Text
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty {loggingLevel = Prelude.pure newValue, ..}
instance Property "MetricsEnabled" MethodSettingProperty where
  type PropertyType "MetricsEnabled" MethodSettingProperty = Value Prelude.Bool
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty
        {metricsEnabled = Prelude.pure newValue, ..}
instance Property "ResourcePath" MethodSettingProperty where
  type PropertyType "ResourcePath" MethodSettingProperty = Value Prelude.Text
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty {resourcePath = Prelude.pure newValue, ..}
instance Property "ThrottlingBurstLimit" MethodSettingProperty where
  type PropertyType "ThrottlingBurstLimit" MethodSettingProperty = Value Prelude.Integer
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty
        {throttlingBurstLimit = Prelude.pure newValue, ..}
instance Property "ThrottlingRateLimit" MethodSettingProperty where
  type PropertyType "ThrottlingRateLimit" MethodSettingProperty = Value Prelude.Double
  set newValue MethodSettingProperty {..}
    = MethodSettingProperty
        {throttlingRateLimit = Prelude.pure newValue, ..}