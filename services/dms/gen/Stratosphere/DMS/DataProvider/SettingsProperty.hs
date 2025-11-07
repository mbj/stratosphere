module Stratosphere.DMS.DataProvider.SettingsProperty (
        module Exports, SettingsProperty(..), mkSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.DocDbSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.IbmDb2LuwSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.IbmDb2zOsSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.MariaDbSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.MicrosoftSqlServerSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.MongoDbSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.MySqlSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.OracleSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.PostgreSqlSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.RedshiftSettingsProperty as Exports
import Stratosphere.ResourceProperties
data SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html>
    SettingsProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-docdbsettings>
                      docDbSettings :: (Prelude.Maybe DocDbSettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-ibmdb2luwsettings>
                      ibmDb2LuwSettings :: (Prelude.Maybe IbmDb2LuwSettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-ibmdb2zossettings>
                      ibmDb2zOsSettings :: (Prelude.Maybe IbmDb2zOsSettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-mariadbsettings>
                      mariaDbSettings :: (Prelude.Maybe MariaDbSettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-microsoftsqlserversettings>
                      microsoftSqlServerSettings :: (Prelude.Maybe MicrosoftSqlServerSettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-mongodbsettings>
                      mongoDbSettings :: (Prelude.Maybe MongoDbSettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-mysqlsettings>
                      mySqlSettings :: (Prelude.Maybe MySqlSettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-oraclesettings>
                      oracleSettings :: (Prelude.Maybe OracleSettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-postgresqlsettings>
                      postgreSqlSettings :: (Prelude.Maybe PostgreSqlSettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-redshiftsettings>
                      redshiftSettings :: (Prelude.Maybe RedshiftSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSettingsProperty :: SettingsProperty
mkSettingsProperty
  = SettingsProperty
      {haddock_workaround_ = (), docDbSettings = Prelude.Nothing,
       ibmDb2LuwSettings = Prelude.Nothing,
       ibmDb2zOsSettings = Prelude.Nothing,
       mariaDbSettings = Prelude.Nothing,
       microsoftSqlServerSettings = Prelude.Nothing,
       mongoDbSettings = Prelude.Nothing, mySqlSettings = Prelude.Nothing,
       oracleSettings = Prelude.Nothing,
       postgreSqlSettings = Prelude.Nothing,
       redshiftSettings = Prelude.Nothing}
instance ToResourceProperties SettingsProperty where
  toResourceProperties SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DocDbSettings" Prelude.<$> docDbSettings,
                            (JSON..=) "IbmDb2LuwSettings" Prelude.<$> ibmDb2LuwSettings,
                            (JSON..=) "IbmDb2zOsSettings" Prelude.<$> ibmDb2zOsSettings,
                            (JSON..=) "MariaDbSettings" Prelude.<$> mariaDbSettings,
                            (JSON..=) "MicrosoftSqlServerSettings"
                              Prelude.<$> microsoftSqlServerSettings,
                            (JSON..=) "MongoDbSettings" Prelude.<$> mongoDbSettings,
                            (JSON..=) "MySqlSettings" Prelude.<$> mySqlSettings,
                            (JSON..=) "OracleSettings" Prelude.<$> oracleSettings,
                            (JSON..=) "PostgreSqlSettings" Prelude.<$> postgreSqlSettings,
                            (JSON..=) "RedshiftSettings" Prelude.<$> redshiftSettings])}
instance JSON.ToJSON SettingsProperty where
  toJSON SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DocDbSettings" Prelude.<$> docDbSettings,
               (JSON..=) "IbmDb2LuwSettings" Prelude.<$> ibmDb2LuwSettings,
               (JSON..=) "IbmDb2zOsSettings" Prelude.<$> ibmDb2zOsSettings,
               (JSON..=) "MariaDbSettings" Prelude.<$> mariaDbSettings,
               (JSON..=) "MicrosoftSqlServerSettings"
                 Prelude.<$> microsoftSqlServerSettings,
               (JSON..=) "MongoDbSettings" Prelude.<$> mongoDbSettings,
               (JSON..=) "MySqlSettings" Prelude.<$> mySqlSettings,
               (JSON..=) "OracleSettings" Prelude.<$> oracleSettings,
               (JSON..=) "PostgreSqlSettings" Prelude.<$> postgreSqlSettings,
               (JSON..=) "RedshiftSettings" Prelude.<$> redshiftSettings]))
instance Property "DocDbSettings" SettingsProperty where
  type PropertyType "DocDbSettings" SettingsProperty = DocDbSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty {docDbSettings = Prelude.pure newValue, ..}
instance Property "IbmDb2LuwSettings" SettingsProperty where
  type PropertyType "IbmDb2LuwSettings" SettingsProperty = IbmDb2LuwSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty {ibmDb2LuwSettings = Prelude.pure newValue, ..}
instance Property "IbmDb2zOsSettings" SettingsProperty where
  type PropertyType "IbmDb2zOsSettings" SettingsProperty = IbmDb2zOsSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty {ibmDb2zOsSettings = Prelude.pure newValue, ..}
instance Property "MariaDbSettings" SettingsProperty where
  type PropertyType "MariaDbSettings" SettingsProperty = MariaDbSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty {mariaDbSettings = Prelude.pure newValue, ..}
instance Property "MicrosoftSqlServerSettings" SettingsProperty where
  type PropertyType "MicrosoftSqlServerSettings" SettingsProperty = MicrosoftSqlServerSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty
        {microsoftSqlServerSettings = Prelude.pure newValue, ..}
instance Property "MongoDbSettings" SettingsProperty where
  type PropertyType "MongoDbSettings" SettingsProperty = MongoDbSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty {mongoDbSettings = Prelude.pure newValue, ..}
instance Property "MySqlSettings" SettingsProperty where
  type PropertyType "MySqlSettings" SettingsProperty = MySqlSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty {mySqlSettings = Prelude.pure newValue, ..}
instance Property "OracleSettings" SettingsProperty where
  type PropertyType "OracleSettings" SettingsProperty = OracleSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty {oracleSettings = Prelude.pure newValue, ..}
instance Property "PostgreSqlSettings" SettingsProperty where
  type PropertyType "PostgreSqlSettings" SettingsProperty = PostgreSqlSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty {postgreSqlSettings = Prelude.pure newValue, ..}
instance Property "RedshiftSettings" SettingsProperty where
  type PropertyType "RedshiftSettings" SettingsProperty = RedshiftSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty {redshiftSettings = Prelude.pure newValue, ..}