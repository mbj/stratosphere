module Stratosphere.ECS.Service.VpcLatticeConfigurationProperty (
        VpcLatticeConfigurationProperty(..),
        mkVpcLatticeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcLatticeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-vpclatticeconfiguration.html>
    VpcLatticeConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-vpclatticeconfiguration.html#cfn-ecs-service-vpclatticeconfiguration-portname>
                                     portName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-vpclatticeconfiguration.html#cfn-ecs-service-vpclatticeconfiguration-rolearn>
                                     roleArn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-vpclatticeconfiguration.html#cfn-ecs-service-vpclatticeconfiguration-targetgrouparn>
                                     targetGroupArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcLatticeConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> VpcLatticeConfigurationProperty
mkVpcLatticeConfigurationProperty portName roleArn targetGroupArn
  = VpcLatticeConfigurationProperty
      {haddock_workaround_ = (), portName = portName, roleArn = roleArn,
       targetGroupArn = targetGroupArn}
instance ToResourceProperties VpcLatticeConfigurationProperty where
  toResourceProperties VpcLatticeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.VpcLatticeConfiguration",
         supportsTags = Prelude.False,
         properties = ["PortName" JSON..= portName,
                       "RoleArn" JSON..= roleArn,
                       "TargetGroupArn" JSON..= targetGroupArn]}
instance JSON.ToJSON VpcLatticeConfigurationProperty where
  toJSON VpcLatticeConfigurationProperty {..}
    = JSON.object
        ["PortName" JSON..= portName, "RoleArn" JSON..= roleArn,
         "TargetGroupArn" JSON..= targetGroupArn]
instance Property "PortName" VpcLatticeConfigurationProperty where
  type PropertyType "PortName" VpcLatticeConfigurationProperty = Value Prelude.Text
  set newValue VpcLatticeConfigurationProperty {..}
    = VpcLatticeConfigurationProperty {portName = newValue, ..}
instance Property "RoleArn" VpcLatticeConfigurationProperty where
  type PropertyType "RoleArn" VpcLatticeConfigurationProperty = Value Prelude.Text
  set newValue VpcLatticeConfigurationProperty {..}
    = VpcLatticeConfigurationProperty {roleArn = newValue, ..}
instance Property "TargetGroupArn" VpcLatticeConfigurationProperty where
  type PropertyType "TargetGroupArn" VpcLatticeConfigurationProperty = Value Prelude.Text
  set newValue VpcLatticeConfigurationProperty {..}
    = VpcLatticeConfigurationProperty {targetGroupArn = newValue, ..}