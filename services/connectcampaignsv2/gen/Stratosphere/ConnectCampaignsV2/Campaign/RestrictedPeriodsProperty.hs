module Stratosphere.ConnectCampaignsV2.Campaign.RestrictedPeriodsProperty (
        module Exports, RestrictedPeriodsProperty(..),
        mkRestrictedPeriodsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.RestrictedPeriodProperty as Exports
import Stratosphere.ResourceProperties
data RestrictedPeriodsProperty
  = RestrictedPeriodsProperty {restrictedPeriodList :: [RestrictedPeriodProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRestrictedPeriodsProperty ::
  [RestrictedPeriodProperty] -> RestrictedPeriodsProperty
mkRestrictedPeriodsProperty restrictedPeriodList
  = RestrictedPeriodsProperty
      {restrictedPeriodList = restrictedPeriodList}
instance ToResourceProperties RestrictedPeriodsProperty where
  toResourceProperties RestrictedPeriodsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.RestrictedPeriods",
         supportsTags = Prelude.False,
         properties = ["RestrictedPeriodList" JSON..= restrictedPeriodList]}
instance JSON.ToJSON RestrictedPeriodsProperty where
  toJSON RestrictedPeriodsProperty {..}
    = JSON.object ["RestrictedPeriodList" JSON..= restrictedPeriodList]
instance Property "RestrictedPeriodList" RestrictedPeriodsProperty where
  type PropertyType "RestrictedPeriodList" RestrictedPeriodsProperty = [RestrictedPeriodProperty]
  set newValue RestrictedPeriodsProperty {}
    = RestrictedPeriodsProperty {restrictedPeriodList = newValue, ..}