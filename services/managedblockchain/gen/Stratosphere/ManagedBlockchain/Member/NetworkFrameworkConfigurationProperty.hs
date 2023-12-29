module Stratosphere.ManagedBlockchain.Member.NetworkFrameworkConfigurationProperty (
        module Exports, NetworkFrameworkConfigurationProperty(..),
        mkNetworkFrameworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Member.NetworkFabricConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NetworkFrameworkConfigurationProperty
  = NetworkFrameworkConfigurationProperty {networkFabricConfiguration :: (Prelude.Maybe NetworkFabricConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkFrameworkConfigurationProperty ::
  NetworkFrameworkConfigurationProperty
mkNetworkFrameworkConfigurationProperty
  = NetworkFrameworkConfigurationProperty
      {networkFabricConfiguration = Prelude.Nothing}
instance ToResourceProperties NetworkFrameworkConfigurationProperty where
  toResourceProperties NetworkFrameworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Member.NetworkFrameworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetworkFabricConfiguration"
                              Prelude.<$> networkFabricConfiguration])}
instance JSON.ToJSON NetworkFrameworkConfigurationProperty where
  toJSON NetworkFrameworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetworkFabricConfiguration"
                 Prelude.<$> networkFabricConfiguration]))
instance Property "NetworkFabricConfiguration" NetworkFrameworkConfigurationProperty where
  type PropertyType "NetworkFabricConfiguration" NetworkFrameworkConfigurationProperty = NetworkFabricConfigurationProperty
  set newValue NetworkFrameworkConfigurationProperty {}
    = NetworkFrameworkConfigurationProperty
        {networkFabricConfiguration = Prelude.pure newValue, ..}