module Stratosphere.MediaConnect.FlowVpcInterface (
        FlowVpcInterface(..), mkFlowVpcInterface
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowVpcInterface
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flowvpcinterface.html>
    FlowVpcInterface {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flowvpcinterface.html#cfn-mediaconnect-flowvpcinterface-flowarn>
                      flowArn :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flowvpcinterface.html#cfn-mediaconnect-flowvpcinterface-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flowvpcinterface.html#cfn-mediaconnect-flowvpcinterface-rolearn>
                      roleArn :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flowvpcinterface.html#cfn-mediaconnect-flowvpcinterface-securitygroupids>
                      securityGroupIds :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-flowvpcinterface.html#cfn-mediaconnect-flowvpcinterface-subnetid>
                      subnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowVpcInterface ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> ValueList Prelude.Text -> Value Prelude.Text -> FlowVpcInterface
mkFlowVpcInterface flowArn name roleArn securityGroupIds subnetId
  = FlowVpcInterface
      {haddock_workaround_ = (), flowArn = flowArn, name = name,
       roleArn = roleArn, securityGroupIds = securityGroupIds,
       subnetId = subnetId}
instance ToResourceProperties FlowVpcInterface where
  toResourceProperties FlowVpcInterface {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowVpcInterface",
         supportsTags = Prelude.False,
         properties = ["FlowArn" JSON..= flowArn, "Name" JSON..= name,
                       "RoleArn" JSON..= roleArn,
                       "SecurityGroupIds" JSON..= securityGroupIds,
                       "SubnetId" JSON..= subnetId]}
instance JSON.ToJSON FlowVpcInterface where
  toJSON FlowVpcInterface {..}
    = JSON.object
        ["FlowArn" JSON..= flowArn, "Name" JSON..= name,
         "RoleArn" JSON..= roleArn,
         "SecurityGroupIds" JSON..= securityGroupIds,
         "SubnetId" JSON..= subnetId]
instance Property "FlowArn" FlowVpcInterface where
  type PropertyType "FlowArn" FlowVpcInterface = Value Prelude.Text
  set newValue FlowVpcInterface {..}
    = FlowVpcInterface {flowArn = newValue, ..}
instance Property "Name" FlowVpcInterface where
  type PropertyType "Name" FlowVpcInterface = Value Prelude.Text
  set newValue FlowVpcInterface {..}
    = FlowVpcInterface {name = newValue, ..}
instance Property "RoleArn" FlowVpcInterface where
  type PropertyType "RoleArn" FlowVpcInterface = Value Prelude.Text
  set newValue FlowVpcInterface {..}
    = FlowVpcInterface {roleArn = newValue, ..}
instance Property "SecurityGroupIds" FlowVpcInterface where
  type PropertyType "SecurityGroupIds" FlowVpcInterface = ValueList Prelude.Text
  set newValue FlowVpcInterface {..}
    = FlowVpcInterface {securityGroupIds = newValue, ..}
instance Property "SubnetId" FlowVpcInterface where
  type PropertyType "SubnetId" FlowVpcInterface = Value Prelude.Text
  set newValue FlowVpcInterface {..}
    = FlowVpcInterface {subnetId = newValue, ..}