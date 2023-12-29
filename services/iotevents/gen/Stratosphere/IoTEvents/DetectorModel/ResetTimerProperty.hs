module Stratosphere.IoTEvents.DetectorModel.ResetTimerProperty (
        ResetTimerProperty(..), mkResetTimerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResetTimerProperty
  = ResetTimerProperty {timerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResetTimerProperty :: Value Prelude.Text -> ResetTimerProperty
mkResetTimerProperty timerName
  = ResetTimerProperty {timerName = timerName}
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
  set newValue ResetTimerProperty {}
    = ResetTimerProperty {timerName = newValue, ..}