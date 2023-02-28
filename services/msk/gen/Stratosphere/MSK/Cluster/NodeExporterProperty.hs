module Stratosphere.MSK.Cluster.NodeExporterProperty (
        NodeExporterProperty(..), mkNodeExporterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeExporterProperty
  = NodeExporterProperty {enabledInBroker :: (Value Prelude.Bool)}
mkNodeExporterProperty ::
  Value Prelude.Bool -> NodeExporterProperty
mkNodeExporterProperty enabledInBroker
  = NodeExporterProperty {enabledInBroker = enabledInBroker}
instance ToResourceProperties NodeExporterProperty where
  toResourceProperties NodeExporterProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.NodeExporter",
         supportsTags = Prelude.False,
         properties = ["EnabledInBroker" JSON..= enabledInBroker]}
instance JSON.ToJSON NodeExporterProperty where
  toJSON NodeExporterProperty {..}
    = JSON.object ["EnabledInBroker" JSON..= enabledInBroker]
instance Property "EnabledInBroker" NodeExporterProperty where
  type PropertyType "EnabledInBroker" NodeExporterProperty = Value Prelude.Bool
  set newValue NodeExporterProperty {}
    = NodeExporterProperty {enabledInBroker = newValue, ..}