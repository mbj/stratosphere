module Stratosphere.ManagedBlockchain.Member.NetworkFabricConfigurationProperty (
        NetworkFabricConfigurationProperty(..),
        mkNetworkFabricConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkFabricConfigurationProperty
  = NetworkFabricConfigurationProperty {edition :: (Value Prelude.Text)}
mkNetworkFabricConfigurationProperty ::
  Value Prelude.Text -> NetworkFabricConfigurationProperty
mkNetworkFabricConfigurationProperty edition
  = NetworkFabricConfigurationProperty {edition = edition}
instance ToResourceProperties NetworkFabricConfigurationProperty where
  toResourceProperties NetworkFabricConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member.NetworkFabricConfiguration",
         supportsTags = Prelude.False,
         properties = ["Edition" JSON..= edition]}
instance JSON.ToJSON NetworkFabricConfigurationProperty where
  toJSON NetworkFabricConfigurationProperty {..}
    = JSON.object ["Edition" JSON..= edition]
instance Property "Edition" NetworkFabricConfigurationProperty where
  type PropertyType "Edition" NetworkFabricConfigurationProperty = Value Prelude.Text
  set newValue NetworkFabricConfigurationProperty {}
    = NetworkFabricConfigurationProperty {edition = newValue, ..}