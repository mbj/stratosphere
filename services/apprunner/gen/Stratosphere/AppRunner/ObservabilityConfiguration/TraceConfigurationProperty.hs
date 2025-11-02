module Stratosphere.AppRunner.ObservabilityConfiguration.TraceConfigurationProperty (
        TraceConfigurationProperty(..), mkTraceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TraceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-observabilityconfiguration-traceconfiguration.html>
    TraceConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-observabilityconfiguration-traceconfiguration.html#cfn-apprunner-observabilityconfiguration-traceconfiguration-vendor>
                                vendor :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTraceConfigurationProperty ::
  Value Prelude.Text -> TraceConfigurationProperty
mkTraceConfigurationProperty vendor
  = TraceConfigurationProperty
      {haddock_workaround_ = (), vendor = vendor}
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
  set newValue TraceConfigurationProperty {..}
    = TraceConfigurationProperty {vendor = newValue, ..}