module Stratosphere.ConnectCampaignsV2.Campaign.TimeRangeProperty (
        TimeRangeProperty(..), mkTimeRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeRangeProperty
  = TimeRangeProperty {endTime :: (Value Prelude.Text),
                       startTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeRangeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TimeRangeProperty
mkTimeRangeProperty endTime startTime
  = TimeRangeProperty {endTime = endTime, startTime = startTime}
instance ToResourceProperties TimeRangeProperty where
  toResourceProperties TimeRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.TimeRange",
         supportsTags = Prelude.False,
         properties = ["EndTime" JSON..= endTime,
                       "StartTime" JSON..= startTime]}
instance JSON.ToJSON TimeRangeProperty where
  toJSON TimeRangeProperty {..}
    = JSON.object
        ["EndTime" JSON..= endTime, "StartTime" JSON..= startTime]
instance Property "EndTime" TimeRangeProperty where
  type PropertyType "EndTime" TimeRangeProperty = Value Prelude.Text
  set newValue TimeRangeProperty {..}
    = TimeRangeProperty {endTime = newValue, ..}
instance Property "StartTime" TimeRangeProperty where
  type PropertyType "StartTime" TimeRangeProperty = Value Prelude.Text
  set newValue TimeRangeProperty {..}
    = TimeRangeProperty {startTime = newValue, ..}