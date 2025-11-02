module Stratosphere.DataSync.LocationEFS.Ec2ConfigProperty (
        Ec2ConfigProperty(..), mkEc2ConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ec2ConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationefs-ec2config.html>
    Ec2ConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationefs-ec2config.html#cfn-datasync-locationefs-ec2config-securitygrouparns>
                       securityGroupArns :: (ValueList Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationefs-ec2config.html#cfn-datasync-locationefs-ec2config-subnetarn>
                       subnetArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEc2ConfigProperty ::
  ValueList Prelude.Text -> Value Prelude.Text -> Ec2ConfigProperty
mkEc2ConfigProperty securityGroupArns subnetArn
  = Ec2ConfigProperty
      {haddock_workaround_ = (), securityGroupArns = securityGroupArns,
       subnetArn = subnetArn}
instance ToResourceProperties Ec2ConfigProperty where
  toResourceProperties Ec2ConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationEFS.Ec2Config",
         supportsTags = Prelude.False,
         properties = ["SecurityGroupArns" JSON..= securityGroupArns,
                       "SubnetArn" JSON..= subnetArn]}
instance JSON.ToJSON Ec2ConfigProperty where
  toJSON Ec2ConfigProperty {..}
    = JSON.object
        ["SecurityGroupArns" JSON..= securityGroupArns,
         "SubnetArn" JSON..= subnetArn]
instance Property "SecurityGroupArns" Ec2ConfigProperty where
  type PropertyType "SecurityGroupArns" Ec2ConfigProperty = ValueList Prelude.Text
  set newValue Ec2ConfigProperty {..}
    = Ec2ConfigProperty {securityGroupArns = newValue, ..}
instance Property "SubnetArn" Ec2ConfigProperty where
  type PropertyType "SubnetArn" Ec2ConfigProperty = Value Prelude.Text
  set newValue Ec2ConfigProperty {..}
    = Ec2ConfigProperty {subnetArn = newValue, ..}