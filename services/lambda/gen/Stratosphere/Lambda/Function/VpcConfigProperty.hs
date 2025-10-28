module Stratosphere.Lambda.Function.VpcConfigProperty (
        VpcConfigProperty(..), mkVpcConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html>
    VpcConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-ipv6allowedfordualstack>
                       ipv6AllowedForDualStack :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-securitygroupids>
                       securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-subnetids>
                       subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConfigProperty :: VpcConfigProperty
mkVpcConfigProperty
  = VpcConfigProperty
      {haddock_workaround_ = (),
       ipv6AllowedForDualStack = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing}
instance ToResourceProperties VpcConfigProperty where
  toResourceProperties VpcConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.VpcConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ipv6AllowedForDualStack"
                              Prelude.<$> ipv6AllowedForDualStack,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON VpcConfigProperty where
  toJSON VpcConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ipv6AllowedForDualStack"
                 Prelude.<$> ipv6AllowedForDualStack,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "Ipv6AllowedForDualStack" VpcConfigProperty where
  type PropertyType "Ipv6AllowedForDualStack" VpcConfigProperty = Value Prelude.Bool
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty
        {ipv6AllowedForDualStack = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" VpcConfigProperty where
  type PropertyType "SecurityGroupIds" VpcConfigProperty = ValueList Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" VpcConfigProperty where
  type PropertyType "SubnetIds" VpcConfigProperty = ValueList Prelude.Text
  set newValue VpcConfigProperty {..}
    = VpcConfigProperty {subnetIds = Prelude.pure newValue, ..}