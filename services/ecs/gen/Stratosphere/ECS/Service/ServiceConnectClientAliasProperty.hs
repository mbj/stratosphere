module Stratosphere.ECS.Service.ServiceConnectClientAliasProperty (
        module Exports, ServiceConnectClientAliasProperty(..),
        mkServiceConnectClientAliasProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectTestTrafficRulesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectClientAliasProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectclientalias.html>
    ServiceConnectClientAliasProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectclientalias.html#cfn-ecs-service-serviceconnectclientalias-dnsname>
                                       dnsName :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectclientalias.html#cfn-ecs-service-serviceconnectclientalias-port>
                                       port :: (Value Prelude.Integer),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectclientalias.html#cfn-ecs-service-serviceconnectclientalias-testtrafficrules>
                                       testTrafficRules :: (Prelude.Maybe ServiceConnectTestTrafficRulesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectClientAliasProperty ::
  Value Prelude.Integer -> ServiceConnectClientAliasProperty
mkServiceConnectClientAliasProperty port
  = ServiceConnectClientAliasProperty
      {haddock_workaround_ = (), port = port, dnsName = Prelude.Nothing,
       testTrafficRules = Prelude.Nothing}
instance ToResourceProperties ServiceConnectClientAliasProperty where
  toResourceProperties ServiceConnectClientAliasProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectClientAlias",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Port" JSON..= port]
                           (Prelude.catMaybes
                              [(JSON..=) "DnsName" Prelude.<$> dnsName,
                               (JSON..=) "TestTrafficRules" Prelude.<$> testTrafficRules]))}
instance JSON.ToJSON ServiceConnectClientAliasProperty where
  toJSON ServiceConnectClientAliasProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Port" JSON..= port]
              (Prelude.catMaybes
                 [(JSON..=) "DnsName" Prelude.<$> dnsName,
                  (JSON..=) "TestTrafficRules" Prelude.<$> testTrafficRules])))
instance Property "DnsName" ServiceConnectClientAliasProperty where
  type PropertyType "DnsName" ServiceConnectClientAliasProperty = Value Prelude.Text
  set newValue ServiceConnectClientAliasProperty {..}
    = ServiceConnectClientAliasProperty
        {dnsName = Prelude.pure newValue, ..}
instance Property "Port" ServiceConnectClientAliasProperty where
  type PropertyType "Port" ServiceConnectClientAliasProperty = Value Prelude.Integer
  set newValue ServiceConnectClientAliasProperty {..}
    = ServiceConnectClientAliasProperty {port = newValue, ..}
instance Property "TestTrafficRules" ServiceConnectClientAliasProperty where
  type PropertyType "TestTrafficRules" ServiceConnectClientAliasProperty = ServiceConnectTestTrafficRulesProperty
  set newValue ServiceConnectClientAliasProperty {..}
    = ServiceConnectClientAliasProperty
        {testTrafficRules = Prelude.pure newValue, ..}