module Stratosphere.ECS.Service.ServiceConnectServiceProperty (
        module Exports, ServiceConnectServiceProperty(..),
        mkServiceConnectServiceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectClientAliasProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectServiceProperty
  = ServiceConnectServiceProperty {clientAliases :: (Prelude.Maybe [ServiceConnectClientAliasProperty]),
                                   discoveryName :: (Prelude.Maybe (Value Prelude.Text)),
                                   ingressPortOverride :: (Prelude.Maybe (Value Prelude.Integer)),
                                   portName :: (Value Prelude.Text)}
mkServiceConnectServiceProperty ::
  Value Prelude.Text -> ServiceConnectServiceProperty
mkServiceConnectServiceProperty portName
  = ServiceConnectServiceProperty
      {portName = portName, clientAliases = Prelude.Nothing,
       discoveryName = Prelude.Nothing,
       ingressPortOverride = Prelude.Nothing}
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
                               (JSON..=) "IngressPortOverride" Prelude.<$> ingressPortOverride]))}
instance JSON.ToJSON ServiceConnectServiceProperty where
  toJSON ServiceConnectServiceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortName" JSON..= portName]
              (Prelude.catMaybes
                 [(JSON..=) "ClientAliases" Prelude.<$> clientAliases,
                  (JSON..=) "DiscoveryName" Prelude.<$> discoveryName,
                  (JSON..=) "IngressPortOverride" Prelude.<$> ingressPortOverride])))
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