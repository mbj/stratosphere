module Stratosphere.MediaConnect.FlowVpcInterface (
        FlowVpcInterface(..), mkFlowVpcInterface
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowVpcInterface
  = FlowVpcInterface {flowArn :: (Value Prelude.Text),
                      name :: (Value Prelude.Text),
                      roleArn :: (Value Prelude.Text),
                      securityGroupIds :: (ValueList Prelude.Text),
                      subnetId :: (Value Prelude.Text)}
mkFlowVpcInterface ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> ValueList Prelude.Text -> Value Prelude.Text -> FlowVpcInterface
mkFlowVpcInterface flowArn name roleArn securityGroupIds subnetId
  = FlowVpcInterface
      {flowArn = flowArn, name = name, roleArn = roleArn,
       securityGroupIds = securityGroupIds, subnetId = subnetId}
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