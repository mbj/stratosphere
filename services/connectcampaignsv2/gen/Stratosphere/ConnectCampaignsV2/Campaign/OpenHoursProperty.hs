module Stratosphere.ConnectCampaignsV2.Campaign.OpenHoursProperty (
        module Exports, OpenHoursProperty(..), mkOpenHoursProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.DailyHourProperty as Exports
import Stratosphere.ResourceProperties
data OpenHoursProperty
  = OpenHoursProperty {dailyHours :: [DailyHourProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenHoursProperty :: [DailyHourProperty] -> OpenHoursProperty
mkOpenHoursProperty dailyHours
  = OpenHoursProperty {dailyHours = dailyHours}
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
  set newValue OpenHoursProperty {}
    = OpenHoursProperty {dailyHours = newValue, ..}