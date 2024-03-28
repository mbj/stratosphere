module Stratosphere.CustomerProfiles.Domain.MatchingProperty (
        module Exports, MatchingProperty(..), mkMatchingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.AutoMergingProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.ExportingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.JobScheduleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchingProperty
  = MatchingProperty {autoMerging :: (Prelude.Maybe AutoMergingProperty),
                      enabled :: (Value Prelude.Bool),
                      exportingConfig :: (Prelude.Maybe ExportingConfigProperty),
                      jobSchedule :: (Prelude.Maybe JobScheduleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchingProperty :: Value Prelude.Bool -> MatchingProperty
mkMatchingProperty enabled
  = MatchingProperty
      {enabled = enabled, autoMerging = Prelude.Nothing,
       exportingConfig = Prelude.Nothing, jobSchedule = Prelude.Nothing}
instance ToResourceProperties MatchingProperty where
  toResourceProperties MatchingProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.Matching",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoMerging" Prelude.<$> autoMerging,
                               (JSON..=) "ExportingConfig" Prelude.<$> exportingConfig,
                               (JSON..=) "JobSchedule" Prelude.<$> jobSchedule]))}
instance JSON.ToJSON MatchingProperty where
  toJSON MatchingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "AutoMerging" Prelude.<$> autoMerging,
                  (JSON..=) "ExportingConfig" Prelude.<$> exportingConfig,
                  (JSON..=) "JobSchedule" Prelude.<$> jobSchedule])))
instance Property "AutoMerging" MatchingProperty where
  type PropertyType "AutoMerging" MatchingProperty = AutoMergingProperty
  set newValue MatchingProperty {..}
    = MatchingProperty {autoMerging = Prelude.pure newValue, ..}
instance Property "Enabled" MatchingProperty where
  type PropertyType "Enabled" MatchingProperty = Value Prelude.Bool
  set newValue MatchingProperty {..}
    = MatchingProperty {enabled = newValue, ..}
instance Property "ExportingConfig" MatchingProperty where
  type PropertyType "ExportingConfig" MatchingProperty = ExportingConfigProperty
  set newValue MatchingProperty {..}
    = MatchingProperty {exportingConfig = Prelude.pure newValue, ..}
instance Property "JobSchedule" MatchingProperty where
  type PropertyType "JobSchedule" MatchingProperty = JobScheduleProperty
  set newValue MatchingProperty {..}
    = MatchingProperty {jobSchedule = Prelude.pure newValue, ..}