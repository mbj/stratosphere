module Stratosphere.MSK.Cluster.JmxExporterProperty (
        JmxExporterProperty(..), mkJmxExporterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JmxExporterProperty
  = JmxExporterProperty {enabledInBroker :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJmxExporterProperty :: Value Prelude.Bool -> JmxExporterProperty
mkJmxExporterProperty enabledInBroker
  = JmxExporterProperty {enabledInBroker = enabledInBroker}
instance ToResourceProperties JmxExporterProperty where
  toResourceProperties JmxExporterProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.JmxExporter",
         supportsTags = Prelude.False,
         properties = ["EnabledInBroker" JSON..= enabledInBroker]}
instance JSON.ToJSON JmxExporterProperty where
  toJSON JmxExporterProperty {..}
    = JSON.object ["EnabledInBroker" JSON..= enabledInBroker]
instance Property "EnabledInBroker" JmxExporterProperty where
  type PropertyType "EnabledInBroker" JmxExporterProperty = Value Prelude.Bool
  set newValue JmxExporterProperty {}
    = JmxExporterProperty {enabledInBroker = newValue, ..}