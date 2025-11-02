module Stratosphere.IoTEvents.DetectorModel.ClearTimerProperty (
        ClearTimerProperty(..), mkClearTimerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClearTimerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-cleartimer.html>
    ClearTimerProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-cleartimer.html#cfn-iotevents-detectormodel-cleartimer-timername>
                        timerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClearTimerProperty :: Value Prelude.Text -> ClearTimerProperty
mkClearTimerProperty timerName
  = ClearTimerProperty
      {haddock_workaround_ = (), timerName = timerName}
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
  set newValue ClearTimerProperty {..}
    = ClearTimerProperty {timerName = newValue, ..}