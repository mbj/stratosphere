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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkfabricconfiguration.html>
    NetworkFabricConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkfabricconfiguration.html#cfn-managedblockchain-member-networkfabricconfiguration-edition>
                                        edition :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkFabricConfigurationProperty ::
  Value Prelude.Text -> NetworkFabricConfigurationProperty
mkNetworkFabricConfigurationProperty edition
  = NetworkFabricConfigurationProperty
      {haddock_workaround_ = (), edition = edition}
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
  set newValue NetworkFabricConfigurationProperty {..}
    = NetworkFabricConfigurationProperty {edition = newValue, ..}