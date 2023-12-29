module Stratosphere.Batch.JobDefinition.NetworkConfigurationProperty (
        NetworkConfigurationProperty(..), mkNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkConfigurationProperty
  = NetworkConfigurationProperty {assignPublicIp :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkConfigurationProperty :: NetworkConfigurationProperty
mkNetworkConfigurationProperty
  = NetworkConfigurationProperty {assignPublicIp = Prelude.Nothing}
instance ToResourceProperties NetworkConfigurationProperty where
  toResourceProperties NetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.NetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssignPublicIp" Prelude.<$> assignPublicIp])}
instance JSON.ToJSON NetworkConfigurationProperty where
  toJSON NetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssignPublicIp" Prelude.<$> assignPublicIp]))
instance Property "AssignPublicIp" NetworkConfigurationProperty where
  type PropertyType "AssignPublicIp" NetworkConfigurationProperty = Value Prelude.Text
  set newValue NetworkConfigurationProperty {}
    = NetworkConfigurationProperty
        {assignPublicIp = Prelude.pure newValue, ..}