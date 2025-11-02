module Stratosphere.ConnectCampaignsV2.Campaign.OpenHoursProperty (
        module Exports, OpenHoursProperty(..), mkOpenHoursProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.DailyHourProperty as Exports
import Stratosphere.ResourceProperties
data OpenHoursProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-openhours.html>
    OpenHoursProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-openhours.html#cfn-connectcampaignsv2-campaign-openhours-dailyhours>
                       dailyHours :: [DailyHourProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenHoursProperty :: [DailyHourProperty] -> OpenHoursProperty
mkOpenHoursProperty dailyHours
  = OpenHoursProperty
      {haddock_workaround_ = (), dailyHours = dailyHours}
instance ToResourceProperties OpenHoursProperty where
  toResourceProperties OpenHoursProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.OpenHours",
         supportsTags = Prelude.False,
         properties = ["DailyHours" JSON..= dailyHours]}
instance JSON.ToJSON OpenHoursProperty where
  toJSON OpenHoursProperty {..}
    = JSON.object ["DailyHours" JSON..= dailyHours]
instance Property "DailyHours" OpenHoursProperty where
  type PropertyType "DailyHours" OpenHoursProperty = [DailyHourProperty]
  set newValue OpenHoursProperty {..}
    = OpenHoursProperty {dailyHours = newValue, ..}