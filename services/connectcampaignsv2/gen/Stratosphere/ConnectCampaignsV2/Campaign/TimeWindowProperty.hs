module Stratosphere.ConnectCampaignsV2.Campaign.TimeWindowProperty (
        module Exports, TimeWindowProperty(..), mkTimeWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.OpenHoursProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.RestrictedPeriodsProperty as Exports
import Stratosphere.ResourceProperties
data TimeWindowProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-timewindow.html>
    TimeWindowProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-timewindow.html#cfn-connectcampaignsv2-campaign-timewindow-openhours>
                        openHours :: OpenHoursProperty,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-timewindow.html#cfn-connectcampaignsv2-campaign-timewindow-restrictedperiods>
                        restrictedPeriods :: (Prelude.Maybe RestrictedPeriodsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeWindowProperty :: OpenHoursProperty -> TimeWindowProperty
mkTimeWindowProperty openHours
  = TimeWindowProperty
      {haddock_workaround_ = (), openHours = openHours,
       restrictedPeriods = Prelude.Nothing}
instance ToResourceProperties TimeWindowProperty where
  toResourceProperties TimeWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.TimeWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OpenHours" JSON..= openHours]
                           (Prelude.catMaybes
                              [(JSON..=) "RestrictedPeriods" Prelude.<$> restrictedPeriods]))}
instance JSON.ToJSON TimeWindowProperty where
  toJSON TimeWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OpenHours" JSON..= openHours]
              (Prelude.catMaybes
                 [(JSON..=) "RestrictedPeriods" Prelude.<$> restrictedPeriods])))
instance Property "OpenHours" TimeWindowProperty where
  type PropertyType "OpenHours" TimeWindowProperty = OpenHoursProperty
  set newValue TimeWindowProperty {..}
    = TimeWindowProperty {openHours = newValue, ..}
instance Property "RestrictedPeriods" TimeWindowProperty where
  type PropertyType "RestrictedPeriods" TimeWindowProperty = RestrictedPeriodsProperty
  set newValue TimeWindowProperty {..}
    = TimeWindowProperty
        {restrictedPeriods = Prelude.pure newValue, ..}