module Stratosphere.RTBFabric.ResponderGateway.AutoScalingGroupsConfigurationProperty (
        AutoScalingGroupsConfigurationProperty(..),
        mkAutoScalingGroupsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoScalingGroupsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-autoscalinggroupsconfiguration.html>
    AutoScalingGroupsConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-autoscalinggroupsconfiguration.html#cfn-rtbfabric-respondergateway-autoscalinggroupsconfiguration-autoscalinggroupnamelist>
                                            autoScalingGroupNameList :: (ValueList Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-autoscalinggroupsconfiguration.html#cfn-rtbfabric-respondergateway-autoscalinggroupsconfiguration-rolearn>
                                            roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoScalingGroupsConfigurationProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> AutoScalingGroupsConfigurationProperty
mkAutoScalingGroupsConfigurationProperty
  autoScalingGroupNameList
  roleArn
  = AutoScalingGroupsConfigurationProperty
      {haddock_workaround_ = (),
       autoScalingGroupNameList = autoScalingGroupNameList,
       roleArn = roleArn}
instance ToResourceProperties AutoScalingGroupsConfigurationProperty where
  toResourceProperties AutoScalingGroupsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::ResponderGateway.AutoScalingGroupsConfiguration",
         supportsTags = Prelude.False,
         properties = ["AutoScalingGroupNameList"
                         JSON..= autoScalingGroupNameList,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON AutoScalingGroupsConfigurationProperty where
  toJSON AutoScalingGroupsConfigurationProperty {..}
    = JSON.object
        ["AutoScalingGroupNameList" JSON..= autoScalingGroupNameList,
         "RoleArn" JSON..= roleArn]
instance Property "AutoScalingGroupNameList" AutoScalingGroupsConfigurationProperty where
  type PropertyType "AutoScalingGroupNameList" AutoScalingGroupsConfigurationProperty = ValueList Prelude.Text
  set newValue AutoScalingGroupsConfigurationProperty {..}
    = AutoScalingGroupsConfigurationProperty
        {autoScalingGroupNameList = newValue, ..}
instance Property "RoleArn" AutoScalingGroupsConfigurationProperty where
  type PropertyType "RoleArn" AutoScalingGroupsConfigurationProperty = Value Prelude.Text
  set newValue AutoScalingGroupsConfigurationProperty {..}
    = AutoScalingGroupsConfigurationProperty {roleArn = newValue, ..}