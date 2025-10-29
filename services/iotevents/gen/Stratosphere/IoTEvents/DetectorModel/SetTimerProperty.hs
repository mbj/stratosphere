module Stratosphere.IoTEvents.DetectorModel.SetTimerProperty (
        SetTimerProperty(..), mkSetTimerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SetTimerProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html>
    SetTimerProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html#cfn-iotevents-detectormodel-settimer-durationexpression>
                      durationExpression :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html#cfn-iotevents-detectormodel-settimer-seconds>
                      seconds :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html#cfn-iotevents-detectormodel-settimer-timername>
                      timerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSetTimerProperty :: Value Prelude.Text -> SetTimerProperty
mkSetTimerProperty timerName
  = SetTimerProperty
      {timerName = timerName, durationExpression = Prelude.Nothing,
       seconds = Prelude.Nothing}
instance ToResourceProperties SetTimerProperty where
  toResourceProperties SetTimerProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.SetTimer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TimerName" JSON..= timerName]
                           (Prelude.catMaybes
                              [(JSON..=) "DurationExpression" Prelude.<$> durationExpression,
                               (JSON..=) "Seconds" Prelude.<$> seconds]))}
instance JSON.ToJSON SetTimerProperty where
  toJSON SetTimerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TimerName" JSON..= timerName]
              (Prelude.catMaybes
                 [(JSON..=) "DurationExpression" Prelude.<$> durationExpression,
                  (JSON..=) "Seconds" Prelude.<$> seconds])))
instance Property "DurationExpression" SetTimerProperty where
  type PropertyType "DurationExpression" SetTimerProperty = Value Prelude.Text
  set newValue SetTimerProperty {..}
    = SetTimerProperty {durationExpression = Prelude.pure newValue, ..}
instance Property "Seconds" SetTimerProperty where
  type PropertyType "Seconds" SetTimerProperty = Value Prelude.Integer
  set newValue SetTimerProperty {..}
    = SetTimerProperty {seconds = Prelude.pure newValue, ..}
instance Property "TimerName" SetTimerProperty where
  type PropertyType "TimerName" SetTimerProperty = Value Prelude.Text
  set newValue SetTimerProperty {..}
    = SetTimerProperty {timerName = newValue, ..}