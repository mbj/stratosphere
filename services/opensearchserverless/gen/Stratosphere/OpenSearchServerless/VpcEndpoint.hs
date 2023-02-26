module Stratosphere.OpenSearchServerless.VpcEndpoint (
        VpcEndpoint(..), mkVpcEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcEndpoint
  = VpcEndpoint {name :: (Value Prelude.Text),
                 securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 vpcId :: (Value Prelude.Text)}
mkVpcEndpoint ::
  Value Prelude.Text -> Value Prelude.Text -> VpcEndpoint
mkVpcEndpoint name vpcId
  = VpcEndpoint
      {name = name, vpcId = vpcId, securityGroupIds = Prelude.Nothing,
       subnetIds = Prelude.Nothing}
instance ToResourceProperties VpcEndpoint where
  toResourceProperties VpcEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::VpcEndpoint",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))}
instance JSON.ToJSON VpcEndpoint where
  toJSON VpcEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds])))
instance Property "Name" VpcEndpoint where
  type PropertyType "Name" VpcEndpoint = Value Prelude.Text
  set newValue VpcEndpoint {..} = VpcEndpoint {name = newValue, ..}
instance Property "SecurityGroupIds" VpcEndpoint where
  type PropertyType "SecurityGroupIds" VpcEndpoint = ValueList Prelude.Text
  set newValue VpcEndpoint {..}
    = VpcEndpoint {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" VpcEndpoint where
  type PropertyType "SubnetIds" VpcEndpoint = ValueList Prelude.Text
  set newValue VpcEndpoint {..}
    = VpcEndpoint {subnetIds = Prelude.pure newValue, ..}
instance Property "VpcId" VpcEndpoint where
  type PropertyType "VpcId" VpcEndpoint = Value Prelude.Text
  set newValue VpcEndpoint {..} = VpcEndpoint {vpcId = newValue, ..}