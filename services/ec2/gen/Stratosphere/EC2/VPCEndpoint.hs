module Stratosphere.EC2.VPCEndpoint (
        VPCEndpoint(..), mkVPCEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCEndpoint
  = VPCEndpoint {policyDocument :: (Prelude.Maybe JSON.Object),
                 privateDnsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 routeTableIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                 securityGroupIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                 serviceName :: (Value Prelude.Text),
                 subnetIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                 vpcEndpointType :: (Prelude.Maybe (Value Prelude.Text)),
                 vpcId :: (Value Prelude.Text)}
mkVPCEndpoint ::
  Value Prelude.Text -> Value Prelude.Text -> VPCEndpoint
mkVPCEndpoint serviceName vpcId
  = VPCEndpoint
      {serviceName = serviceName, vpcId = vpcId,
       policyDocument = Prelude.Nothing,
       privateDnsEnabled = Prelude.Nothing,
       routeTableIds = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing,
       vpcEndpointType = Prelude.Nothing}
instance ToResourceProperties VPCEndpoint where
  toResourceProperties VPCEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCEndpoint",
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
  type PropertyType "RouteTableIds" VPCEndpoint = ValueList (Value Prelude.Text)
  set newValue VPCEndpoint {..}
    = VPCEndpoint {routeTableIds = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" VPCEndpoint where
  type PropertyType "SecurityGroupIds" VPCEndpoint = ValueList (Value Prelude.Text)
  set newValue VPCEndpoint {..}
    = VPCEndpoint {securityGroupIds = Prelude.pure newValue, ..}
instance Property "ServiceName" VPCEndpoint where
  type PropertyType "ServiceName" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {serviceName = newValue, ..}
instance Property "SubnetIds" VPCEndpoint where
  type PropertyType "SubnetIds" VPCEndpoint = ValueList (Value Prelude.Text)
  set newValue VPCEndpoint {..}
    = VPCEndpoint {subnetIds = Prelude.pure newValue, ..}
instance Property "VpcEndpointType" VPCEndpoint where
  type PropertyType "VpcEndpointType" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..}
    = VPCEndpoint {vpcEndpointType = Prelude.pure newValue, ..}
instance Property "VpcId" VPCEndpoint where
  type PropertyType "VpcId" VPCEndpoint = Value Prelude.Text
  set newValue VPCEndpoint {..} = VPCEndpoint {vpcId = newValue, ..}