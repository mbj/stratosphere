module Stratosphere.OpenSearchServerless.VpcEndpoint (
        VpcEndpoint(..), mkVpcEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcEndpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-vpcendpoint.html>
    VpcEndpoint {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-vpcendpoint.html#cfn-opensearchserverless-vpcendpoint-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-vpcendpoint.html#cfn-opensearchserverless-vpcendpoint-securitygroupids>
                 securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-vpcendpoint.html#cfn-opensearchserverless-vpcendpoint-subnetids>
                 subnetIds :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-vpcendpoint.html#cfn-opensearchserverless-vpcendpoint-vpcid>
                 vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcEndpoint ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> VpcEndpoint
mkVpcEndpoint name subnetIds vpcId
  = VpcEndpoint
      {haddock_workaround_ = (), name = name, subnetIds = subnetIds,
       vpcId = vpcId, securityGroupIds = Prelude.Nothing}
instance ToResourceProperties VpcEndpoint where
  toResourceProperties VpcEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::VpcEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "SubnetIds" JSON..= subnetIds,
                            "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds]))}
instance JSON.ToJSON VpcEndpoint where
  toJSON VpcEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "SubnetIds" JSON..= subnetIds,
               "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds])))
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
    = VpcEndpoint {subnetIds = newValue, ..}
instance Property "VpcId" VpcEndpoint where
  type PropertyType "VpcId" VpcEndpoint = Value Prelude.Text
  set newValue VpcEndpoint {..} = VpcEndpoint {vpcId = newValue, ..}