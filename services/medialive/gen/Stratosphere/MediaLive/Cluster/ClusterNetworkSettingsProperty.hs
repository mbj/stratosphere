module Stratosphere.MediaLive.Cluster.ClusterNetworkSettingsProperty (
        module Exports, ClusterNetworkSettingsProperty(..),
        mkClusterNetworkSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Cluster.InterfaceMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterNetworkSettingsProperty
  = ClusterNetworkSettingsProperty {defaultRoute :: (Prelude.Maybe (Value Prelude.Text)),
                                    interfaceMappings :: (Prelude.Maybe [InterfaceMappingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterNetworkSettingsProperty :: ClusterNetworkSettingsProperty
mkClusterNetworkSettingsProperty
  = ClusterNetworkSettingsProperty
      {defaultRoute = Prelude.Nothing,
       interfaceMappings = Prelude.Nothing}
instance ToResourceProperties ClusterNetworkSettingsProperty where
  toResourceProperties ClusterNetworkSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Cluster.ClusterNetworkSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultRoute" Prelude.<$> defaultRoute,
                            (JSON..=) "InterfaceMappings" Prelude.<$> interfaceMappings])}
instance JSON.ToJSON ClusterNetworkSettingsProperty where
  toJSON ClusterNetworkSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultRoute" Prelude.<$> defaultRoute,
               (JSON..=) "InterfaceMappings" Prelude.<$> interfaceMappings]))
instance Property "DefaultRoute" ClusterNetworkSettingsProperty where
  type PropertyType "DefaultRoute" ClusterNetworkSettingsProperty = Value Prelude.Text
  set newValue ClusterNetworkSettingsProperty {..}
    = ClusterNetworkSettingsProperty
        {defaultRoute = Prelude.pure newValue, ..}
instance Property "InterfaceMappings" ClusterNetworkSettingsProperty where
  type PropertyType "InterfaceMappings" ClusterNetworkSettingsProperty = [InterfaceMappingProperty]
  set newValue ClusterNetworkSettingsProperty {..}
    = ClusterNetworkSettingsProperty
        {interfaceMappings = Prelude.pure newValue, ..}