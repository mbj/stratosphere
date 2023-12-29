module Stratosphere.Synthetics.Canary.VPCConfigProperty (
        VPCConfigProperty(..), mkVPCConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCConfigProperty
  = VPCConfigProperty {securityGroupIds :: (ValueList Prelude.Text),
                       subnetIds :: (ValueList Prelude.Text),
                       vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCConfigProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> VPCConfigProperty
mkVPCConfigProperty securityGroupIds subnetIds
  = VPCConfigProperty
      {securityGroupIds = securityGroupIds, subnetIds = subnetIds,
       vpcId = Prelude.Nothing}
instance ToResourceProperties VPCConfigProperty where
  toResourceProperties VPCConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.VPCConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityGroupIds" JSON..= securityGroupIds,
                            "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes [(JSON..=) "VpcId" Prelude.<$> vpcId]))}
instance JSON.ToJSON VPCConfigProperty where
  toJSON VPCConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityGroupIds" JSON..= securityGroupIds,
               "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes [(JSON..=) "VpcId" Prelude.<$> vpcId])))
instance Property "SecurityGroupIds" VPCConfigProperty where
  type PropertyType "SecurityGroupIds" VPCConfigProperty = ValueList Prelude.Text
  set newValue VPCConfigProperty {..}
    = VPCConfigProperty {securityGroupIds = newValue, ..}
instance Property "SubnetIds" VPCConfigProperty where
  type PropertyType "SubnetIds" VPCConfigProperty = ValueList Prelude.Text
  set newValue VPCConfigProperty {..}
    = VPCConfigProperty {subnetIds = newValue, ..}
instance Property "VpcId" VPCConfigProperty where
  type PropertyType "VpcId" VPCConfigProperty = Value Prelude.Text
  set newValue VPCConfigProperty {..}
    = VPCConfigProperty {vpcId = Prelude.pure newValue, ..}