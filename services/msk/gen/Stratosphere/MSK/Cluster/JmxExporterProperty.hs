module Stratosphere.MSK.Cluster.JmxExporterProperty (
        JmxExporterProperty(..), mkJmxExporterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JmxExporterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-jmxexporter.html>
    JmxExporterProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-jmxexporter.html#cfn-msk-cluster-jmxexporter-enabledinbroker>
                         enabledInBroker :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJmxExporterProperty :: Value Prelude.Bool -> JmxExporterProperty
mkJmxExporterProperty enabledInBroker
  = JmxExporterProperty
      {haddock_workaround_ = (), enabledInBroker = enabledInBroker}
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
  set newValue JmxExporterProperty {..}
    = JmxExporterProperty {enabledInBroker = newValue, ..}