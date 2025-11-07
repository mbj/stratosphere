module Stratosphere.DataZone.Connection.RedshiftLineageSyncConfigurationInputProperty (
        module Exports, RedshiftLineageSyncConfigurationInputProperty(..),
        mkRedshiftLineageSyncConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.LineageSyncScheduleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftLineageSyncConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftlineagesyncconfigurationinput.html>
    RedshiftLineageSyncConfigurationInputProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftlineagesyncconfigurationinput.html#cfn-datazone-connection-redshiftlineagesyncconfigurationinput-enabled>
                                                   enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftlineagesyncconfigurationinput.html#cfn-datazone-connection-redshiftlineagesyncconfigurationinput-schedule>
                                                   schedule :: (Prelude.Maybe LineageSyncScheduleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftLineageSyncConfigurationInputProperty ::
  RedshiftLineageSyncConfigurationInputProperty
mkRedshiftLineageSyncConfigurationInputProperty
  = RedshiftLineageSyncConfigurationInputProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       schedule = Prelude.Nothing}
instance ToResourceProperties RedshiftLineageSyncConfigurationInputProperty where
  toResourceProperties
    RedshiftLineageSyncConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.RedshiftLineageSyncConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "Schedule" Prelude.<$> schedule])}
instance JSON.ToJSON RedshiftLineageSyncConfigurationInputProperty where
  toJSON RedshiftLineageSyncConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "Schedule" Prelude.<$> schedule]))
instance Property "Enabled" RedshiftLineageSyncConfigurationInputProperty where
  type PropertyType "Enabled" RedshiftLineageSyncConfigurationInputProperty = Value Prelude.Bool
  set newValue RedshiftLineageSyncConfigurationInputProperty {..}
    = RedshiftLineageSyncConfigurationInputProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "Schedule" RedshiftLineageSyncConfigurationInputProperty where
  type PropertyType "Schedule" RedshiftLineageSyncConfigurationInputProperty = LineageSyncScheduleProperty
  set newValue RedshiftLineageSyncConfigurationInputProperty {..}
    = RedshiftLineageSyncConfigurationInputProperty
        {schedule = Prelude.pure newValue, ..}