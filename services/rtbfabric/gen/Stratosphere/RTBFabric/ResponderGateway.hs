module Stratosphere.RTBFabric.ResponderGateway (
        module Exports, ResponderGateway(..), mkResponderGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.ResponderGateway.ManagedEndpointConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.RTBFabric.ResponderGateway.TrustStoreConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ResponderGateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html>
    ResponderGateway {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-domainname>
                      domainName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-managedendpointconfiguration>
                      managedEndpointConfiguration :: (Prelude.Maybe ManagedEndpointConfigurationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-port>
                      port :: (Value Prelude.Integer),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-protocol>
                      protocol :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-securitygroupids>
                      securityGroupIds :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-subnetids>
                      subnetIds :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-truststoreconfiguration>
                      trustStoreConfiguration :: (Prelude.Maybe TrustStoreConfigurationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rtbfabric-respondergateway.html#cfn-rtbfabric-respondergateway-vpcid>
                      vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponderGateway ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> ValueList Prelude.Text
        -> ValueList Prelude.Text -> Value Prelude.Text -> ResponderGateway
mkResponderGateway port protocol securityGroupIds subnetIds vpcId
  = ResponderGateway
      {haddock_workaround_ = (), port = port, protocol = protocol,
       securityGroupIds = securityGroupIds, subnetIds = subnetIds,
       vpcId = vpcId, description = Prelude.Nothing,
       domainName = Prelude.Nothing,
       managedEndpointConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing, trustStoreConfiguration = Prelude.Nothing}
instance ToResourceProperties ResponderGateway where
  toResourceProperties ResponderGateway {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::ResponderGateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Port" JSON..= port, "Protocol" JSON..= protocol,
                            "SecurityGroupIds" JSON..= securityGroupIds,
                            "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DomainName" Prelude.<$> domainName,
                               (JSON..=) "ManagedEndpointConfiguration"
                                 Prelude.<$> managedEndpointConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrustStoreConfiguration"
                                 Prelude.<$> trustStoreConfiguration]))}
instance JSON.ToJSON ResponderGateway where
  toJSON ResponderGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Port" JSON..= port, "Protocol" JSON..= protocol,
               "SecurityGroupIds" JSON..= securityGroupIds,
               "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DomainName" Prelude.<$> domainName,
                  (JSON..=) "ManagedEndpointConfiguration"
                    Prelude.<$> managedEndpointConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrustStoreConfiguration"
                    Prelude.<$> trustStoreConfiguration])))
instance Property "Description" ResponderGateway where
  type PropertyType "Description" ResponderGateway = Value Prelude.Text
  set newValue ResponderGateway {..}
    = ResponderGateway {description = Prelude.pure newValue, ..}
instance Property "DomainName" ResponderGateway where
  type PropertyType "DomainName" ResponderGateway = Value Prelude.Text
  set newValue ResponderGateway {..}
    = ResponderGateway {domainName = Prelude.pure newValue, ..}
instance Property "ManagedEndpointConfiguration" ResponderGateway where
  type PropertyType "ManagedEndpointConfiguration" ResponderGateway = ManagedEndpointConfigurationProperty
  set newValue ResponderGateway {..}
    = ResponderGateway
        {managedEndpointConfiguration = Prelude.pure newValue, ..}
instance Property "Port" ResponderGateway where
  type PropertyType "Port" ResponderGateway = Value Prelude.Integer
  set newValue ResponderGateway {..}
    = ResponderGateway {port = newValue, ..}
instance Property "Protocol" ResponderGateway where
  type PropertyType "Protocol" ResponderGateway = Value Prelude.Text
  set newValue ResponderGateway {..}
    = ResponderGateway {protocol = newValue, ..}
instance Property "SecurityGroupIds" ResponderGateway where
  type PropertyType "SecurityGroupIds" ResponderGateway = ValueList Prelude.Text
  set newValue ResponderGateway {..}
    = ResponderGateway {securityGroupIds = newValue, ..}
instance Property "SubnetIds" ResponderGateway where
  type PropertyType "SubnetIds" ResponderGateway = ValueList Prelude.Text
  set newValue ResponderGateway {..}
    = ResponderGateway {subnetIds = newValue, ..}
instance Property "Tags" ResponderGateway where
  type PropertyType "Tags" ResponderGateway = [Tag]
  set newValue ResponderGateway {..}
    = ResponderGateway {tags = Prelude.pure newValue, ..}
instance Property "TrustStoreConfiguration" ResponderGateway where
  type PropertyType "TrustStoreConfiguration" ResponderGateway = TrustStoreConfigurationProperty
  set newValue ResponderGateway {..}
    = ResponderGateway
        {trustStoreConfiguration = Prelude.pure newValue, ..}
instance Property "VpcId" ResponderGateway where
  type PropertyType "VpcId" ResponderGateway = Value Prelude.Text
  set newValue ResponderGateway {..}
    = ResponderGateway {vpcId = newValue, ..}