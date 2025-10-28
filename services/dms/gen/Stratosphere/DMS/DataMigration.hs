module Stratosphere.DMS.DataMigration (
        module Exports, DataMigration(..), mkDataMigration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DMS.DataMigration.DataMigrationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataMigration.SourceDataSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataMigration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-datamigration.html>
    DataMigration {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-datamigration.html#cfn-dms-datamigration-datamigrationidentifier>
                   dataMigrationIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-datamigration.html#cfn-dms-datamigration-datamigrationname>
                   dataMigrationName :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-datamigration.html#cfn-dms-datamigration-datamigrationsettings>
                   dataMigrationSettings :: (Prelude.Maybe DataMigrationSettingsProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-datamigration.html#cfn-dms-datamigration-datamigrationtype>
                   dataMigrationType :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-datamigration.html#cfn-dms-datamigration-migrationprojectidentifier>
                   migrationProjectIdentifier :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-datamigration.html#cfn-dms-datamigration-serviceaccessrolearn>
                   serviceAccessRoleArn :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-datamigration.html#cfn-dms-datamigration-sourcedatasettings>
                   sourceDataSettings :: (Prelude.Maybe [SourceDataSettingsProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-datamigration.html#cfn-dms-datamigration-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataMigration ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> DataMigration
mkDataMigration
  dataMigrationType
  migrationProjectIdentifier
  serviceAccessRoleArn
  = DataMigration
      {haddock_workaround_ = (), dataMigrationType = dataMigrationType,
       migrationProjectIdentifier = migrationProjectIdentifier,
       serviceAccessRoleArn = serviceAccessRoleArn,
       dataMigrationIdentifier = Prelude.Nothing,
       dataMigrationName = Prelude.Nothing,
       dataMigrationSettings = Prelude.Nothing,
       sourceDataSettings = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DataMigration where
  toResourceProperties DataMigration {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataMigration", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataMigrationType" JSON..= dataMigrationType,
                            "MigrationProjectIdentifier" JSON..= migrationProjectIdentifier,
                            "ServiceAccessRoleArn" JSON..= serviceAccessRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DataMigrationIdentifier"
                                 Prelude.<$> dataMigrationIdentifier,
                               (JSON..=) "DataMigrationName" Prelude.<$> dataMigrationName,
                               (JSON..=) "DataMigrationSettings"
                                 Prelude.<$> dataMigrationSettings,
                               (JSON..=) "SourceDataSettings" Prelude.<$> sourceDataSettings,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataMigration where
  toJSON DataMigration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataMigrationType" JSON..= dataMigrationType,
               "MigrationProjectIdentifier" JSON..= migrationProjectIdentifier,
               "ServiceAccessRoleArn" JSON..= serviceAccessRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "DataMigrationIdentifier"
                    Prelude.<$> dataMigrationIdentifier,
                  (JSON..=) "DataMigrationName" Prelude.<$> dataMigrationName,
                  (JSON..=) "DataMigrationSettings"
                    Prelude.<$> dataMigrationSettings,
                  (JSON..=) "SourceDataSettings" Prelude.<$> sourceDataSettings,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataMigrationIdentifier" DataMigration where
  type PropertyType "DataMigrationIdentifier" DataMigration = Value Prelude.Text
  set newValue DataMigration {..}
    = DataMigration
        {dataMigrationIdentifier = Prelude.pure newValue, ..}
instance Property "DataMigrationName" DataMigration where
  type PropertyType "DataMigrationName" DataMigration = Value Prelude.Text
  set newValue DataMigration {..}
    = DataMigration {dataMigrationName = Prelude.pure newValue, ..}
instance Property "DataMigrationSettings" DataMigration where
  type PropertyType "DataMigrationSettings" DataMigration = DataMigrationSettingsProperty
  set newValue DataMigration {..}
    = DataMigration {dataMigrationSettings = Prelude.pure newValue, ..}
instance Property "DataMigrationType" DataMigration where
  type PropertyType "DataMigrationType" DataMigration = Value Prelude.Text
  set newValue DataMigration {..}
    = DataMigration {dataMigrationType = newValue, ..}
instance Property "MigrationProjectIdentifier" DataMigration where
  type PropertyType "MigrationProjectIdentifier" DataMigration = Value Prelude.Text
  set newValue DataMigration {..}
    = DataMigration {migrationProjectIdentifier = newValue, ..}
instance Property "ServiceAccessRoleArn" DataMigration where
  type PropertyType "ServiceAccessRoleArn" DataMigration = Value Prelude.Text
  set newValue DataMigration {..}
    = DataMigration {serviceAccessRoleArn = newValue, ..}
instance Property "SourceDataSettings" DataMigration where
  type PropertyType "SourceDataSettings" DataMigration = [SourceDataSettingsProperty]
  set newValue DataMigration {..}
    = DataMigration {sourceDataSettings = Prelude.pure newValue, ..}
instance Property "Tags" DataMigration where
  type PropertyType "Tags" DataMigration = [Tag]
  set newValue DataMigration {..}
    = DataMigration {tags = Prelude.pure newValue, ..}