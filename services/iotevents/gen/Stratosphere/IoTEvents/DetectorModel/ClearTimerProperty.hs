module Stratosphere.IoTEvents.DetectorModel.ClearTimerProperty (
        ClearTimerProperty(..), mkClearTimerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClearTimerProperty
  = ClearTimerProperty {timerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClearTimerProperty :: Value Prelude.Text -> ClearTimerProperty
mkClearTimerProperty timerName
  = ClearTimerProperty {timerName = timerName}
instance ToResourceProperties ClearTimerProperty where
  toResourceProperties ClearTimerProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.ClearTimer",
         supportsTags = Prelude.False,
         properties = ["TimerName" JSON..= timerName]}
instance JSON.ToJSON ClearTimerProperty where
  toJSON ClearTimerProperty {..}
    = JSON.object ["TimerName" JSON..= timerName]
instance Property "TimerName" ClearTimerProperty where
  type PropertyType "TimerName" ClearTimerProperty = Value Prelude.Text
  set newValue ClearTimerProperty {}
    = ClearTimerProperty {timerName = newValue, ..}