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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-matching.html>
    MatchingProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-matching.html#cfn-customerprofiles-domain-matching-automerging>
                      autoMerging :: (Prelude.Maybe AutoMergingProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-matching.html#cfn-customerprofiles-domain-matching-enabled>
                      enabled :: (Value Prelude.Bool),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-matching.html#cfn-customerprofiles-domain-matching-exportingconfig>
                      exportingConfig :: (Prelude.Maybe ExportingConfigProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-matching.html#cfn-customerprofiles-domain-matching-jobschedule>
                      jobSchedule :: (Prelude.Maybe JobScheduleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchingProperty :: Value Prelude.Bool -> MatchingProperty
mkMatchingProperty enabled
  = MatchingProperty
      {haddock_workaround_ = (), enabled = enabled,
       autoMerging = Prelude.Nothing, exportingConfig = Prelude.Nothing,
       jobSchedule = Prelude.Nothing}
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