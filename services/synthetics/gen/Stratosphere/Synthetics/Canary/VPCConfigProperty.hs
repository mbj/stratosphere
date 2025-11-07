module Stratosphere.Synthetics.Canary.VPCConfigProperty (
        VPCConfigProperty(..), mkVPCConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html>
    VPCConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-ipv6allowedfordualstack>
                       ipv6AllowedForDualStack :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-securitygroupids>
                       securityGroupIds :: (ValueList Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-subnetids>
                       subnetIds :: (ValueList Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-vpcid>
                       vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCConfigProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> VPCConfigProperty
mkVPCConfigProperty securityGroupIds subnetIds
  = VPCConfigProperty
      {haddock_workaround_ = (), securityGroupIds = securityGroupIds,
       subnetIds = subnetIds, ipv6AllowedForDualStack = Prelude.Nothing,
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
                           (Prelude.catMaybes
                              [(JSON..=) "Ipv6AllowedForDualStack"
                                 Prelude.<$> ipv6AllowedForDualStack,
                               (JSON..=) "VpcId" Prelude.<$> vpcId]))}
instance JSON.ToJSON VPCConfigProperty where
  toJSON VPCConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityGroupIds" JSON..= securityGroupIds,
               "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "Ipv6AllowedForDualStack"
                    Prelude.<$> ipv6AllowedForDualStack,
                  (JSON..=) "VpcId" Prelude.<$> vpcId])))
instance Property "Ipv6AllowedForDualStack" VPCConfigProperty where
  type PropertyType "Ipv6AllowedForDualStack" VPCConfigProperty = Value Prelude.Bool
  set newValue VPCConfigProperty {..}
    = VPCConfigProperty
        {ipv6AllowedForDualStack = Prelude.pure newValue, ..}
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