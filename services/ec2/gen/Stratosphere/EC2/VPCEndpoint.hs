module Stratosphere.EC2.VPCEndpoint (
        VPCEndpoint(..), mkVPCEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCEndpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html>
    VPCEndpoint {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-policydocument>
                 policyDocument :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-privatednsenabled>
                 privateDnsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-routetableids>
                 routeTableIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-securitygroupids>
                 securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-servicename>
                 serviceName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-subnetids>
                 subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-vpcendpointtype>
                 vpcEndpointType :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-vpcid>
                 vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCEndpoint ::
  Value Prelude.Text -> Value Prelude.Text -> VPCEndpoint
mkVPCEndpoint serviceName vpcId
  = VPCEndpoint
      {haddock_workaround_ = (), serviceName = serviceName,
       vpcId = vpcId, policyDocument = Prelude.Nothing,
       privateDnsEnabled = Prelude.Nothing,
       routeTableIds = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing,
       vpcEndpointType = Prelude.Nothing}
instance ToResourceProperties VPCEndpoint where
  toResourceProperties VPCEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCEndpoint", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ServiceName" JSON..= serviceName, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                               (JSON..=) "PrivateDnsEnabled" Prelude.<$> privateDnsEnabled,
                               (JSON..=) "RouteTableIds" Prelude.<$> routeTableIds,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "VpcEndpointType" Prelude.<$> vpcEndpointType]))}
instance JSON.ToJSON VPCEndpoint where
  toJSON VPCEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ServiceName" JSON..= serviceName, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                  (JSON..=) "PrivateDnsEnabled" Prelude.<$> privateDnsEnabled,
                  (JSON..=) "RouteTableIds" Prelude.<$> routeTableIds,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "VpcEndpointType" Prelude.<$> vpcEndpointType])))
instance Property "PolicyDocument" VPCEndpoint where
  type PropertyType "PolicyDocument" VPCEndpoint = JSON.Object
  set newValue VPCEndpoint {..}
    = VPCEndpoint {policyDocument = Prelude.pure newValue, ..}
instance Property "PrivateDnsEnabled" VPCEndpoint where
  type PropertyType "PrivateDnsEnabled" VPCEndpoint = Value Prelude.Bool
  set newValue VPCEndpoint {..}
    = VPCEndpoint {privateDnsEnabled = Prelude.pure newValue, ..}
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
    = VPCEndpoint {serviceName = newValue, ..}
instance Property "SubnetIds" VPCEndpoint where
  type PropertyType "SubnetIds" VPCEndpoint = ValueList Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {subnetIds = Prelude.pure newValue, ..}
instance Property "VpcEndpointType" VPCEndpoint where
  type PropertyType "VpcEndpointType" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {vpcEndpointType = Prelude.pure newValue, ..}
instance Property "VpcId" VPCEndpoint where
  type PropertyType "VpcId" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..} = VPCEndpoint {vpcId = newValue, ..}