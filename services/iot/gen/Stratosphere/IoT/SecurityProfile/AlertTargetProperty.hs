module Stratosphere.IoT.SecurityProfile.AlertTargetProperty (
        AlertTargetProperty(..), mkAlertTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlertTargetProperty
  = AlertTargetProperty {alertTargetArn :: (Value Prelude.Text),
                         roleArn :: (Value Prelude.Text)}
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