module Stratosphere.MSK.VpcConnection (
        VpcConnection(..), mkVpcConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConnection
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-vpcconnection.html>
    VpcConnection {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-vpcconnection.html#cfn-msk-vpcconnection-authentication>
                   authentication :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-vpcconnection.html#cfn-msk-vpcconnection-clientsubnets>
                   clientSubnets :: (ValueList Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-vpcconnection.html#cfn-msk-vpcconnection-securitygroups>
                   securityGroups :: (ValueList Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-vpcconnection.html#cfn-msk-vpcconnection-tags>
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-vpcconnection.html#cfn-msk-vpcconnection-targetclusterarn>
                   targetClusterArn :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-vpcconnection.html#cfn-msk-vpcconnection-vpcid>
                   vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnection ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> ValueList Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> VpcConnection
mkVpcConnection
  authentication
  clientSubnets
  securityGroups
  targetClusterArn
  vpcId
  = VpcConnection
      {haddock_workaround_ = (), authentication = authentication,
       clientSubnets = clientSubnets, securityGroups = securityGroups,
       targetClusterArn = targetClusterArn, vpcId = vpcId,
       tags = Prelude.Nothing}
instance ToResourceProperties VpcConnection where
  toResourceProperties VpcConnection {..}
    = ResourceProperties
        {awsType = "AWS::MSK::VpcConnection", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Authentication" JSON..= authentication,
                            "ClientSubnets" JSON..= clientSubnets,
                            "SecurityGroups" JSON..= securityGroups,
                            "TargetClusterArn" JSON..= targetClusterArn, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VpcConnection where
  toJSON VpcConnection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Authentication" JSON..= authentication,
               "ClientSubnets" JSON..= clientSubnets,
               "SecurityGroups" JSON..= securityGroups,
               "TargetClusterArn" JSON..= targetClusterArn, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Authentication" VpcConnection where
  type PropertyType "Authentication" VpcConnection = Value Prelude.Text
  set newValue VpcConnection {..}
    = VpcConnection {authentication = newValue, ..}
instance Property "ClientSubnets" VpcConnection where
  type PropertyType "ClientSubnets" VpcConnection = ValueList Prelude.Text
  set newValue VpcConnection {..}
    = VpcConnection {clientSubnets = newValue, ..}
instance Property "SecurityGroups" VpcConnection where
  type PropertyType "SecurityGroups" VpcConnection = ValueList Prelude.Text
  set newValue VpcConnection {..}
    = VpcConnection {securityGroups = newValue, ..}
instance Property "Tags" VpcConnection where
  type PropertyType "Tags" VpcConnection = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue VpcConnection {..}
    = VpcConnection {tags = Prelude.pure newValue, ..}
instance Property "TargetClusterArn" VpcConnection where
  type PropertyType "TargetClusterArn" VpcConnection = Value Prelude.Text
  set newValue VpcConnection {..}
    = VpcConnection {targetClusterArn = newValue, ..}
instance Property "VpcId" VpcConnection where
  type PropertyType "VpcId" VpcConnection = Value Prelude.Text
  set newValue VpcConnection {..}
    = VpcConnection {vpcId = newValue, ..}