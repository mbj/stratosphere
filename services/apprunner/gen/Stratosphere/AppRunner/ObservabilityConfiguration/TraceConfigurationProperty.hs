module Stratosphere.AppRunner.ObservabilityConfiguration.TraceConfigurationProperty (
        TraceConfigurationProperty(..), mkTraceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TraceConfigurationProperty
  = TraceConfigurationProperty {vendor :: (Value Prelude.Text)}
mkTraceConfigurationProperty ::
  Value Prelude.Text -> TraceConfigurationProperty
mkTraceConfigurationProperty vendor
  = TraceConfigurationProperty {vendor = vendor}
instance ToResourceProperties TraceConfigurationProperty where
  toResourceProperties TraceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::ObservabilityConfiguration.TraceConfiguration",
         supportsTags = Prelude.False,
         properties = ["Vendor" JSON..= vendor]}
instance JSON.ToJSON TraceConfigurationProperty where
  toJSON TraceConfigurationProperty {..}
    = JSON.object ["Vendor" JSON..= vendor]
instance Property "Vendor" TraceConfigurationProperty where
  type PropertyType "Vendor" TraceConfigurationProperty = Value Prelude.Text
  set newValue TraceConfigurationProperty {}
    = TraceConfigurationProperty {vendor = newValue, ..}