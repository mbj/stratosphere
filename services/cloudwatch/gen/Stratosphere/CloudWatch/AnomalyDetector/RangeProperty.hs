module Stratosphere.CloudWatch.AnomalyDetector.RangeProperty (
        RangeProperty(..), mkRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangeProperty
  = RangeProperty {endTime :: (Value Prelude.Text),
                   startTime :: (Value Prelude.Text)}
mkRangeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RangeProperty
mkRangeProperty endTime startTime
  = RangeProperty {endTime = endTime, startTime = startTime}
instance ToResourceProperties RangeProperty where
  toResourceProperties RangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::AnomalyDetector.Range",
         properties = ["EndTime" JSON..= endTime,
                       "StartTime" JSON..= startTime]}
instance JSON.ToJSON RangeProperty where
  toJSON RangeProperty {..}
    = JSON.object
        ["EndTime" JSON..= endTime, "StartTime" JSON..= startTime]
instance Property "EndTime" RangeProperty where
  type PropertyType "EndTime" RangeProperty = Value Prelude.Text
  set newValue RangeProperty {..}
    = RangeProperty {endTime = newValue, ..}
instance Property "StartTime" RangeProperty where
  type PropertyType "StartTime" RangeProperty = Value Prelude.Text
  set newValue RangeProperty {..}
    = RangeProperty {startTime = newValue, ..}