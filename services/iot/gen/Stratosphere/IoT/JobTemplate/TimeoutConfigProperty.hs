module Stratosphere.IoT.JobTemplate.TimeoutConfigProperty (
        TimeoutConfigProperty(..), mkTimeoutConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeoutConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-timeoutconfig.html>
    TimeoutConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-timeoutconfig.html#cfn-iot-jobtemplate-timeoutconfig-inprogresstimeoutinminutes>
                           inProgressTimeoutInMinutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeoutConfigProperty ::
  Value Prelude.Integer -> TimeoutConfigProperty
mkTimeoutConfigProperty inProgressTimeoutInMinutes
  = TimeoutConfigProperty
      {haddock_workaround_ = (),
       inProgressTimeoutInMinutes = inProgressTimeoutInMinutes}
instance ToResourceProperties TimeoutConfigProperty where
  toResourceProperties TimeoutConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.TimeoutConfig",
         supportsTags = Prelude.False,
         properties = ["InProgressTimeoutInMinutes"
                         JSON..= inProgressTimeoutInMinutes]}
instance JSON.ToJSON TimeoutConfigProperty where
  toJSON TimeoutConfigProperty {..}
    = JSON.object
        ["InProgressTimeoutInMinutes" JSON..= inProgressTimeoutInMinutes]
instance Property "InProgressTimeoutInMinutes" TimeoutConfigProperty where
  type PropertyType "InProgressTimeoutInMinutes" TimeoutConfigProperty = Value Prelude.Integer
  set newValue TimeoutConfigProperty {..}
    = TimeoutConfigProperty {inProgressTimeoutInMinutes = newValue, ..}