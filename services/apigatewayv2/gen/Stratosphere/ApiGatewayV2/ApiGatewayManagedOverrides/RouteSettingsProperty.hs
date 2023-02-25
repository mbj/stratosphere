module Stratosphere.ApiGatewayV2.ApiGatewayManagedOverrides.RouteSettingsProperty (
        RouteSettingsProperty(..), mkRouteSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteSettingsProperty
  = RouteSettingsProperty {dataTraceEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           detailedMetricsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           loggingLevel :: (Prelude.Maybe (Value Prelude.Text)),
                           throttlingBurstLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                           throttlingRateLimit :: (Prelude.Maybe (Value Prelude.Double))}
mkRouteSettingsProperty :: RouteSettingsProperty
mkRouteSettingsProperty
  = RouteSettingsProperty
      {dataTraceEnabled = Prelude.Nothing,
       detailedMetricsEnabled = Prelude.Nothing,
       loggingLevel = Prelude.Nothing,
       throttlingBurstLimit = Prelude.Nothing,
       throttlingRateLimit = Prelude.Nothing}
instance ToResourceProperties RouteSettingsProperty where
  toResourceProperties RouteSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides.RouteSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataTraceEnabled" Prelude.<$> dataTraceEnabled,
                            (JSON..=) "DetailedMetricsEnabled"
                              Prelude.<$> detailedMetricsEnabled,
                            (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
                            (JSON..=) "ThrottlingBurstLimit" Prelude.<$> throttlingBurstLimit,
                            (JSON..=) "ThrottlingRateLimit" Prelude.<$> throttlingRateLimit])}
instance JSON.ToJSON RouteSettingsProperty where
  toJSON RouteSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataTraceEnabled" Prelude.<$> dataTraceEnabled,
               (JSON..=) "DetailedMetricsEnabled"
                 Prelude.<$> detailedMetricsEnabled,
               (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
               (JSON..=) "ThrottlingBurstLimit" Prelude.<$> throttlingBurstLimit,
               (JSON..=) "ThrottlingRateLimit" Prelude.<$> throttlingRateLimit]))
instance Property "DataTraceEnabled" RouteSettingsProperty where
  type PropertyType "DataTraceEnabled" RouteSettingsProperty = Value Prelude.Bool
  set newValue RouteSettingsProperty {..}
    = RouteSettingsProperty
        {dataTraceEnabled = Prelude.pure newValue, ..}
instance Property "DetailedMetricsEnabled" RouteSettingsProperty where
  type PropertyType "DetailedMetricsEnabled" RouteSettingsProperty = Value Prelude.Bool
  set newValue RouteSettingsProperty {..}
    = RouteSettingsProperty
        {detailedMetricsEnabled = Prelude.pure newValue, ..}
instance Property "LoggingLevel" RouteSettingsProperty where
  type PropertyType "LoggingLevel" RouteSettingsProperty = Value Prelude.Text
  set newValue RouteSettingsProperty {..}
    = RouteSettingsProperty {loggingLevel = Prelude.pure newValue, ..}
instance Property "ThrottlingBurstLimit" RouteSettingsProperty where
  type PropertyType "ThrottlingBurstLimit" RouteSettingsProperty = Value Prelude.Integer
  set newValue RouteSettingsProperty {..}
    = RouteSettingsProperty
        {throttlingBurstLimit = Prelude.pure newValue, ..}
instance Property "ThrottlingRateLimit" RouteSettingsProperty where
  type PropertyType "ThrottlingRateLimit" RouteSettingsProperty = Value Prelude.Double
  set newValue RouteSettingsProperty {..}
    = RouteSettingsProperty
        {throttlingRateLimit = Prelude.pure newValue, ..}