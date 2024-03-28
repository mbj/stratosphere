module Stratosphere.DMS.DataProvider.SettingsProperty (
        module Exports, SettingsProperty(..), mkSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.MicrosoftSqlServerSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.MySqlSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.OracleSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.DataProvider.PostgreSqlSettingsProperty as Exports
import Stratosphere.ResourceProperties
data SettingsProperty
  = SettingsProperty {microsoftSqlServerSettings :: (Prelude.Maybe MicrosoftSqlServerSettingsProperty),
                      mySqlSettings :: (Prelude.Maybe MySqlSettingsProperty),
                      oracleSettings :: (Prelude.Maybe OracleSettingsProperty),
                      postgreSqlSettings :: (Prelude.Maybe PostgreSqlSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSettingsProperty :: SettingsProperty
mkSettingsProperty
  = SettingsProperty
      {microsoftSqlServerSettings = Prelude.Nothing,
       mySqlSettings = Prelude.Nothing, oracleSettings = Prelude.Nothing,
       postgreSqlSettings = Prelude.Nothing}
instance ToResourceProperties SettingsProperty where
  toResourceProperties SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MicrosoftSqlServerSettings"
                              Prelude.<$> microsoftSqlServerSettings,
                            (JSON..=) "MySqlSettings" Prelude.<$> mySqlSettings,
                            (JSON..=) "OracleSettings" Prelude.<$> oracleSettings,
                            (JSON..=) "PostgreSqlSettings" Prelude.<$> postgreSqlSettings])}
instance JSON.ToJSON SettingsProperty where
  toJSON SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MicrosoftSqlServerSettings"
                 Prelude.<$> microsoftSqlServerSettings,
               (JSON..=) "MySqlSettings" Prelude.<$> mySqlSettings,
               (JSON..=) "OracleSettings" Prelude.<$> oracleSettings,
               (JSON..=) "PostgreSqlSettings" Prelude.<$> postgreSqlSettings]))
instance Property "MicrosoftSqlServerSettings" SettingsProperty where
  type PropertyType "MicrosoftSqlServerSettings" SettingsProperty = MicrosoftSqlServerSettingsProperty
  set newValue SettingsProperty {..}
    = SettingsProperty
        {microsoftSqlServerSettings = Prelude.pure newValue, ..}
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