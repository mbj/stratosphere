module Stratosphere.MSK.VpcConnection (
        VpcConnection(..), mkVpcConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConnection
  = VpcConnection {authentication :: (Value Prelude.Text),
                   clientSubnets :: (ValueList Prelude.Text),
                   securityGroups :: (ValueList Prelude.Text),
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                   targetClusterArn :: (Value Prelude.Text),
                   vpcId :: (Value Prelude.Text)}
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
      {authentication = authentication, clientSubnets = clientSubnets,
       securityGroups = securityGroups,
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