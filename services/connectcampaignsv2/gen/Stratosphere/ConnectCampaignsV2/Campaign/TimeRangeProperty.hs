module Stratosphere.ConnectCampaignsV2.Campaign.TimeRangeProperty (
        TimeRangeProperty(..), mkTimeRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-timerange.html>
    TimeRangeProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-timerange.html#cfn-connectcampaignsv2-campaign-timerange-endtime>
                       endTime :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-timerange.html#cfn-connectcampaignsv2-campaign-timerange-starttime>
                       startTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeRangeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TimeRangeProperty
mkTimeRangeProperty endTime startTime
  = TimeRangeProperty
      {haddock_workaround_ = (), endTime = endTime,
       startTime = startTime}
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