module Stratosphere.ECS.Service.ServiceConnectClientAliasProperty (
        ServiceConnectClientAliasProperty(..),
        mkServiceConnectClientAliasProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectClientAliasProperty
  = ServiceConnectClientAliasProperty {dnsName :: (Prelude.Maybe (Value Prelude.Text)),
                                       port :: (Value Prelude.Integer)}
mkServiceConnectClientAliasProperty ::
  Value Prelude.Integer -> ServiceConnectClientAliasProperty
mkServiceConnectClientAliasProperty port
  = ServiceConnectClientAliasProperty
      {port = port, dnsName = Prelude.Nothing}
instance ToResourceProperties ServiceConnectClientAliasProperty where
  toResourceProperties ServiceConnectClientAliasProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectClientAlias",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Port" JSON..= port]
                           (Prelude.catMaybes [(JSON..=) "DnsName" Prelude.<$> dnsName]))}
instance JSON.ToJSON ServiceConnectClientAliasProperty where
  toJSON ServiceConnectClientAliasProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Port" JSON..= port]
              (Prelude.catMaybes [(JSON..=) "DnsName" Prelude.<$> dnsName])))
instance Property "DnsName" ServiceConnectClientAliasProperty where
  type PropertyType "DnsName" ServiceConnectClientAliasProperty = Value Prelude.Text
  set newValue ServiceConnectClientAliasProperty {..}
    = ServiceConnectClientAliasProperty
        {dnsName = Prelude.pure newValue, ..}
instance Property "Port" ServiceConnectClientAliasProperty where
  type PropertyType "Port" ServiceConnectClientAliasProperty = Value Prelude.Integer
  set newValue ServiceConnectClientAliasProperty {..}
    = ServiceConnectClientAliasProperty {port = newValue, ..}