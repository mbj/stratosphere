module Stratosphere.IoTEvents.DetectorModel.ResetTimerProperty (
        ResetTimerProperty(..), mkResetTimerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResetTimerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-resettimer.html>
    ResetTimerProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-resettimer.html#cfn-iotevents-detectormodel-resettimer-timername>
                        timerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResetTimerProperty :: Value Prelude.Text -> ResetTimerProperty
mkResetTimerProperty timerName
  = ResetTimerProperty
      {haddock_workaround_ = (), timerName = timerName}
instance ToResourceProperties ResetTimerProperty where
  toResourceProperties ResetTimerProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.ResetTimer",
         supportsTags = Prelude.False,
         properties = ["TimerName" JSON..= timerName]}
instance JSON.ToJSON ResetTimerProperty where
  toJSON ResetTimerProperty {..}
    = JSON.object ["TimerName" JSON..= timerName]
instance Property "TimerName" ResetTimerProperty where
  type PropertyType "TimerName" ResetTimerProperty = Value Prelude.Text
  set newValue ResetTimerProperty {..}
    = ResetTimerProperty {timerName = newValue, ..}