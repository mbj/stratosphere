module Stratosphere.DMS.DataMigration.DataMigrationSettingsProperty (
        DataMigrationSettingsProperty(..), mkDataMigrationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataMigrationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-datamigration-datamigrationsettings.html>
    DataMigrationSettingsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-datamigration-datamigrationsettings.html#cfn-dms-datamigration-datamigrationsettings-cloudwatchlogsenabled>
                                   cloudwatchLogsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-datamigration-datamigrationsettings.html#cfn-dms-datamigration-datamigrationsettings-numberofjobs>
                                   numberOfJobs :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-datamigration-datamigrationsettings.html#cfn-dms-datamigration-datamigrationsettings-selectionrules>
                                   selectionRules :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataMigrationSettingsProperty :: DataMigrationSettingsProperty
mkDataMigrationSettingsProperty
  = DataMigrationSettingsProperty
      {haddock_workaround_ = (), cloudwatchLogsEnabled = Prelude.Nothing,
       numberOfJobs = Prelude.Nothing, selectionRules = Prelude.Nothing}
instance ToResourceProperties DataMigrationSettingsProperty where
  toResourceProperties DataMigrationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataMigration.DataMigrationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudwatchLogsEnabled"
                              Prelude.<$> cloudwatchLogsEnabled,
                            (JSON..=) "NumberOfJobs" Prelude.<$> numberOfJobs,
                            (JSON..=) "SelectionRules" Prelude.<$> selectionRules])}
instance JSON.ToJSON DataMigrationSettingsProperty where
  toJSON DataMigrationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudwatchLogsEnabled"
                 Prelude.<$> cloudwatchLogsEnabled,
               (JSON..=) "NumberOfJobs" Prelude.<$> numberOfJobs,
               (JSON..=) "SelectionRules" Prelude.<$> selectionRules]))
instance Property "CloudwatchLogsEnabled" DataMigrationSettingsProperty where
  type PropertyType "CloudwatchLogsEnabled" DataMigrationSettingsProperty = Value Prelude.Bool
  set newValue DataMigrationSettingsProperty {..}
    = DataMigrationSettingsProperty
        {cloudwatchLogsEnabled = Prelude.pure newValue, ..}
instance Property "NumberOfJobs" DataMigrationSettingsProperty where
  type PropertyType "NumberOfJobs" DataMigrationSettingsProperty = Value Prelude.Integer
  set newValue DataMigrationSettingsProperty {..}
    = DataMigrationSettingsProperty
        {numberOfJobs = Prelude.pure newValue, ..}
instance Property "SelectionRules" DataMigrationSettingsProperty where
  type PropertyType "SelectionRules" DataMigrationSettingsProperty = Value Prelude.Text
  set newValue DataMigrationSettingsProperty {..}
    = DataMigrationSettingsProperty
        {selectionRules = Prelude.pure newValue, ..}