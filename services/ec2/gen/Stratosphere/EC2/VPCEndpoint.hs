module Stratosphere.EC2.VPCEndpoint (
        module Exports, VPCEndpoint(..), mkVPCEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VPCEndpoint.DnsOptionsSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VPCEndpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html>
    VPCEndpoint {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-dnsoptions>
                 dnsOptions :: (Prelude.Maybe DnsOptionsSpecificationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-ipaddresstype>
                 ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-policydocument>
                 policyDocument :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-privatednsenabled>
                 privateDnsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-resourceconfigurationarn>
                 resourceConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-routetableids>
                 routeTableIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-securitygroupids>
                 securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-servicename>
                 serviceName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-servicenetworkarn>
                 serviceNetworkArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-serviceregion>
                 serviceRegion :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-subnetids>
                 subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-vpcendpointtype>
                 vpcEndpointType :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-vpcid>
                 vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCEndpoint :: Value Prelude.Text -> VPCEndpoint
mkVPCEndpoint vpcId
  = VPCEndpoint
      {haddock_workaround_ = (), vpcId = vpcId,
       dnsOptions = Prelude.Nothing, ipAddressType = Prelude.Nothing,
       policyDocument = Prelude.Nothing,
       privateDnsEnabled = Prelude.Nothing,
       resourceConfigurationArn = Prelude.Nothing,
       routeTableIds = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, serviceName = Prelude.Nothing,
       serviceNetworkArn = Prelude.Nothing,
       serviceRegion = Prelude.Nothing, subnetIds = Prelude.Nothing,
       tags = Prelude.Nothing, vpcEndpointType = Prelude.Nothing}
instance ToResourceProperties VPCEndpoint where
  toResourceProperties VPCEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCEndpoint", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "DnsOptions" Prelude.<$> dnsOptions,
                               (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                               (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                               (JSON..=) "PrivateDnsEnabled" Prelude.<$> privateDnsEnabled,
                               (JSON..=) "ResourceConfigurationArn"
                                 Prelude.<$> resourceConfigurationArn,
                               (JSON..=) "RouteTableIds" Prelude.<$> routeTableIds,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "ServiceName" Prelude.<$> serviceName,
                               (JSON..=) "ServiceNetworkArn" Prelude.<$> serviceNetworkArn,
                               (JSON..=) "ServiceRegion" Prelude.<$> serviceRegion,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcEndpointType" Prelude.<$> vpcEndpointType]))}
instance JSON.ToJSON VPCEndpoint where
  toJSON VPCEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "DnsOptions" Prelude.<$> dnsOptions,
                  (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                  (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                  (JSON..=) "PrivateDnsEnabled" Prelude.<$> privateDnsEnabled,
                  (JSON..=) "ResourceConfigurationArn"
                    Prelude.<$> resourceConfigurationArn,
                  (JSON..=) "RouteTableIds" Prelude.<$> routeTableIds,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "ServiceName" Prelude.<$> serviceName,
                  (JSON..=) "ServiceNetworkArn" Prelude.<$> serviceNetworkArn,
                  (JSON..=) "ServiceRegion" Prelude.<$> serviceRegion,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcEndpointType" Prelude.<$> vpcEndpointType])))
instance Property "DnsOptions" VPCEndpoint where
  type PropertyType "DnsOptions" VPCEndpoint = DnsOptionsSpecificationProperty
  set newValue VPCEndpoint {..}
    = VPCEndpoint {dnsOptions = Prelude.pure newValue, ..}
instance Property "IpAddressType" VPCEndpoint where
  type PropertyType "IpAddressType" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {ipAddressType = Prelude.pure newValue, ..}
instance Property "PolicyDocument" VPCEndpoint where
  type PropertyType "PolicyDocument" VPCEndpoint = JSON.Object
  set newValue VPCEndpoint {..}
    = VPCEndpoint {policyDocument = Prelude.pure newValue, ..}
instance Property "PrivateDnsEnabled" VPCEndpoint where
  type PropertyType "PrivateDnsEnabled" VPCEndpoint = Value Prelude.Bool
  set newValue VPCEndpoint {..}
    = VPCEndpoint {privateDnsEnabled = Prelude.pure newValue, ..}
instance Property "ResourceConfigurationArn" VPCEndpoint where
  type PropertyType "ResourceConfigurationArn" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint
        {resourceConfigurationArn = Prelude.pure newValue, ..}
instance Property "RouteTableIds" VPCEndpoint where
  type PropertyType "RouteTableIds" VPCEndpoint = ValueList Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {routeTableIds = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" VPCEndpoint where
  type PropertyType "SecurityGroupIds" VPCEndpoint = ValueList Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {securityGroupIds = Prelude.pure newValue, ..}
instance Property "ServiceName" VPCEndpoint where
  type PropertyType "ServiceName" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {serviceName = Prelude.pure newValue, ..}
instance Property "ServiceNetworkArn" VPCEndpoint where
  type PropertyType "ServiceNetworkArn" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {serviceNetworkArn = Prelude.pure newValue, ..}
instance Property "ServiceRegion" VPCEndpoint where
  type PropertyType "ServiceRegion" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {serviceRegion = Prelude.pure newValue, ..}
instance Property "SubnetIds" VPCEndpoint where
  type PropertyType "SubnetIds" VPCEndpoint = ValueList Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {subnetIds = Prelude.pure newValue, ..}
instance Property "Tags" VPCEndpoint where
  type PropertyType "Tags" VPCEndpoint = [Tag]
  set newValue VPCEndpoint {..}
    = VPCEndpoint {tags = Prelude.pure newValue, ..}
instance Property "VpcEndpointType" VPCEndpoint where
  type PropertyType "VpcEndpointType" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {vpcEndpointType = Prelude.pure newValue, ..}
instance Property "VpcId" VPCEndpoint where
  type PropertyType "VpcId" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..} = VPCEndpoint {vpcId = newValue, ..}