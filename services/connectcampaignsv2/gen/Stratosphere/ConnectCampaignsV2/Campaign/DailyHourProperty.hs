module Stratosphere.ConnectCampaignsV2.Campaign.DailyHourProperty (
        module Exports, DailyHourProperty(..), mkDailyHourProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.TimeRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DailyHourProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-dailyhour.html>
    DailyHourProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-dailyhour.html#cfn-connectcampaignsv2-campaign-dailyhour-key>
                       key :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-dailyhour.html#cfn-connectcampaignsv2-campaign-dailyhour-value>
                       value :: (Prelude.Maybe [TimeRangeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDailyHourProperty :: DailyHourProperty
mkDailyHourProperty
  = DailyHourProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties DailyHourProperty where
  toResourceProperties DailyHourProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.DailyHour",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON DailyHourProperty where
  toJSON DailyHourProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" DailyHourProperty where
  type PropertyType "Key" DailyHourProperty = Value Prelude.Text
  set newValue DailyHourProperty {..}
    = DailyHourProperty {key = Prelude.pure newValue, ..}
instance Property "Value" DailyHourProperty where
  type PropertyType "Value" DailyHourProperty = [TimeRangeProperty]
  set newValue DailyHourProperty {..}
    = DailyHourProperty {value = Prelude.pure newValue, ..}