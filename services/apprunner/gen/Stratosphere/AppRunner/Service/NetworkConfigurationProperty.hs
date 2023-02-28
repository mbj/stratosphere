module Stratosphere.AppRunner.Service.NetworkConfigurationProperty (
        module Exports, NetworkConfigurationProperty(..),
        mkNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.Service.EgressConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.IngressConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NetworkConfigurationProperty
  = NetworkConfigurationProperty {egressConfiguration :: (Prelude.Maybe EgressConfigurationProperty),
                                  ingressConfiguration :: (Prelude.Maybe IngressConfigurationProperty)}
mkNetworkConfigurationProperty :: NetworkConfigurationProperty
mkNetworkConfigurationProperty
  = NetworkConfigurationProperty
      {egressConfiguration = Prelude.Nothing,
       ingressConfiguration = Prelude.Nothing}
instance ToResourceProperties NetworkConfigurationProperty where
  toResourceProperties NetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.NetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EgressConfiguration" Prelude.<$> egressConfiguration,
                            (JSON..=) "IngressConfiguration"
                              Prelude.<$> ingressConfiguration])}
instance JSON.ToJSON NetworkConfigurationProperty where
  toJSON NetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EgressConfiguration" Prelude.<$> egressConfiguration,
               (JSON..=) "IngressConfiguration"
                 Prelude.<$> ingressConfiguration]))
instance Property "EgressConfiguration" NetworkConfigurationProperty where
  type PropertyType "EgressConfiguration" NetworkConfigurationProperty = EgressConfigurationProperty
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {egressConfiguration = Prelude.pure newValue, ..}
instance Property "IngressConfiguration" NetworkConfigurationProperty where
  type PropertyType "IngressConfiguration" NetworkConfigurationProperty = IngressConfigurationProperty
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {ingressConfiguration = Prelude.pure newValue, ..}