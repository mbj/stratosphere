module Stratosphere.ConnectCampaignsV2.Campaign.RestrictedPeriodProperty (
        RestrictedPeriodProperty(..), mkRestrictedPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RestrictedPeriodProperty
  = RestrictedPeriodProperty {endDate :: (Value Prelude.Text),
                              name :: (Prelude.Maybe (Value Prelude.Text)),
                              startDate :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRestrictedPeriodProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RestrictedPeriodProperty
mkRestrictedPeriodProperty endDate startDate
  = RestrictedPeriodProperty
      {endDate = endDate, startDate = startDate, name = Prelude.Nothing}
instance ToResourceProperties RestrictedPeriodProperty where
  toResourceProperties RestrictedPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.RestrictedPeriod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndDate" JSON..= endDate, "StartDate" JSON..= startDate]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON RestrictedPeriodProperty where
  toJSON RestrictedPeriodProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndDate" JSON..= endDate, "StartDate" JSON..= startDate]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "EndDate" RestrictedPeriodProperty where
  type PropertyType "EndDate" RestrictedPeriodProperty = Value Prelude.Text
  set newValue RestrictedPeriodProperty {..}
    = RestrictedPeriodProperty {endDate = newValue, ..}
instance Property "Name" RestrictedPeriodProperty where
  type PropertyType "Name" RestrictedPeriodProperty = Value Prelude.Text
  set newValue RestrictedPeriodProperty {..}
    = RestrictedPeriodProperty {name = Prelude.pure newValue, ..}
instance Property "StartDate" RestrictedPeriodProperty where
  type PropertyType "StartDate" RestrictedPeriodProperty = Value Prelude.Text
  set newValue RestrictedPeriodProperty {..}
    = RestrictedPeriodProperty {startDate = newValue, ..}