module Stratosphere.IoT.SecurityProfile.AlertTargetProperty (
        AlertTargetProperty(..), mkAlertTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlertTargetProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-alerttarget.html>
    AlertTargetProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-alerttarget.html#cfn-iot-securityprofile-alerttarget-alerttargetarn>
                         alertTargetArn :: (Value Prelude.Text),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-alerttarget.html#cfn-iot-securityprofile-alerttarget-rolearn>
                         roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlertTargetProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AlertTargetProperty
mkAlertTargetProperty alertTargetArn roleArn
  = AlertTargetProperty
      {alertTargetArn = alertTargetArn, roleArn = roleArn}
instance ToResourceProperties AlertTargetProperty where
  toResourceProperties AlertTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.AlertTarget",
         supportsTags = Prelude.False,
         properties = ["AlertTargetArn" JSON..= alertTargetArn,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON AlertTargetProperty where
  toJSON AlertTargetProperty {..}
    = JSON.object
        ["AlertTargetArn" JSON..= alertTargetArn,
         "RoleArn" JSON..= roleArn]
instance Property "AlertTargetArn" AlertTargetProperty where
  type PropertyType "AlertTargetArn" AlertTargetProperty = Value Prelude.Text
  set newValue AlertTargetProperty {..}
    = AlertTargetProperty {alertTargetArn = newValue, ..}
instance Property "RoleArn" AlertTargetProperty where
  type PropertyType "RoleArn" AlertTargetProperty = Value Prelude.Text
  set newValue AlertTargetProperty {..}
    = AlertTargetProperty {roleArn = newValue, ..}