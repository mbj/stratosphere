module Stratosphere.ECS.Service.ServiceConnectServiceProperty (
        module Exports, ServiceConnectServiceProperty(..),
        mkServiceConnectServiceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectClientAliasProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectTlsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.TimeoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectServiceProperty
  = ServiceConnectServiceProperty {clientAliases :: (Prelude.Maybe [ServiceConnectClientAliasProperty]),
                                   discoveryName :: (Prelude.Maybe (Value Prelude.Text)),
                                   ingressPortOverride :: (Prelude.Maybe (Value Prelude.Integer)),
                                   portName :: (Value Prelude.Text),
                                   timeout :: (Prelude.Maybe TimeoutConfigurationProperty),
                                   tls :: (Prelude.Maybe ServiceConnectTlsConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectServiceProperty ::
  Value Prelude.Text -> ServiceConnectServiceProperty
mkServiceConnectServiceProperty portName
  = ServiceConnectServiceProperty
      {portName = portName, clientAliases = Prelude.Nothing,
       discoveryName = Prelude.Nothing,
       ingressPortOverride = Prelude.Nothing, timeout = Prelude.Nothing,
       tls = Prelude.Nothing}
instance ToResourceProperties ServiceConnectServiceProperty where
  toResourceProperties ServiceConnectServiceProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectService",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortName" JSON..= portName]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientAliases" Prelude.<$> clientAliases,
                               (JSON..=) "DiscoveryName" Prelude.<$> discoveryName,
                               (JSON..=) "IngressPortOverride" Prelude.<$> ingressPortOverride,
                               (JSON..=) "Timeout" Prelude.<$> timeout,
                               (JSON..=) "Tls" Prelude.<$> tls]))}
instance JSON.ToJSON ServiceConnectServiceProperty where
  toJSON ServiceConnectServiceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortName" JSON..= portName]
              (Prelude.catMaybes
                 [(JSON..=) "ClientAliases" Prelude.<$> clientAliases,
                  (JSON..=) "DiscoveryName" Prelude.<$> discoveryName,
                  (JSON..=) "IngressPortOverride" Prelude.<$> ingressPortOverride,
                  (JSON..=) "Timeout" Prelude.<$> timeout,
                  (JSON..=) "Tls" Prelude.<$> tls])))
instance Property "ClientAliases" ServiceConnectServiceProperty where
  type PropertyType "ClientAliases" ServiceConnectServiceProperty = [ServiceConnectClientAliasProperty]
  set newValue ServiceConnectServiceProperty {..}
    = ServiceConnectServiceProperty
        {clientAliases = Prelude.pure newValue, ..}
instance Property "DiscoveryName" ServiceConnectServiceProperty where
  type PropertyType "DiscoveryName" ServiceConnectServiceProperty = Value Prelude.Text
  set newValue ServiceConnectServiceProperty {..}
    = ServiceConnectServiceProperty
        {discoveryName = Prelude.pure newValue, ..}
instance Property "IngressPortOverride" ServiceConnectServiceProperty where
  type PropertyType "IngressPortOverride" ServiceConnectServiceProperty = Value Prelude.Integer
  set newValue ServiceConnectServiceProperty {..}
    = ServiceConnectServiceProperty
        {ingressPortOverride = Prelude.pure newValue, ..}
instance Property "PortName" ServiceConnectServiceProperty where
  type PropertyType "PortName" ServiceConnectServiceProperty = Value Prelude.Text
  set newValue ServiceConnectServiceProperty {..}
    = ServiceConnectServiceProperty {portName = newValue, ..}
instance Property "Timeout" ServiceConnectServiceProperty where
  type PropertyType "Timeout" ServiceConnectServiceProperty = TimeoutConfigurationProperty
  set newValue ServiceConnectServiceProperty {..}
    = ServiceConnectServiceProperty
        {timeout = Prelude.pure newValue, ..}
instance Property "Tls" ServiceConnectServiceProperty where
  type PropertyType "Tls" ServiceConnectServiceProperty = ServiceConnectTlsConfigurationProperty
  set newValue ServiceConnectServiceProperty {..}
    = ServiceConnectServiceProperty {tls = Prelude.pure newValue, ..}