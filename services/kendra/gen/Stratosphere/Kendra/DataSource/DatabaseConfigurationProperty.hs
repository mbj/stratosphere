module Stratosphere.Kendra.DataSource.DatabaseConfigurationProperty (
        module Exports, DatabaseConfigurationProperty(..),
        mkDatabaseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.AclConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ColumnConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConnectionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceVpcConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.SqlConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseConfigurationProperty
  = DatabaseConfigurationProperty {aclConfiguration :: (Prelude.Maybe AclConfigurationProperty),
                                   columnConfiguration :: ColumnConfigurationProperty,
                                   connectionConfiguration :: ConnectionConfigurationProperty,
                                   databaseEngineType :: (Value Prelude.Text),
                                   sqlConfiguration :: (Prelude.Maybe SqlConfigurationProperty),
                                   vpcConfiguration :: (Prelude.Maybe DataSourceVpcConfigurationProperty)}
mkDatabaseConfigurationProperty ::
  ColumnConfigurationProperty
  -> ConnectionConfigurationProperty
     -> Value Prelude.Text -> DatabaseConfigurationProperty
mkDatabaseConfigurationProperty
  columnConfiguration
  connectionConfiguration
  databaseEngineType
  = DatabaseConfigurationProperty
      {columnConfiguration = columnConfiguration,
       connectionConfiguration = connectionConfiguration,
       databaseEngineType = databaseEngineType,
       aclConfiguration = Prelude.Nothing,
       sqlConfiguration = Prelude.Nothing,
       vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties DatabaseConfigurationProperty where
  toResourceProperties DatabaseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DatabaseConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ColumnConfiguration" JSON..= columnConfiguration,
                            "ConnectionConfiguration" JSON..= connectionConfiguration,
                            "DatabaseEngineType" JSON..= databaseEngineType]
                           (Prelude.catMaybes
                              [(JSON..=) "AclConfiguration" Prelude.<$> aclConfiguration,
                               (JSON..=) "SqlConfiguration" Prelude.<$> sqlConfiguration,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON DatabaseConfigurationProperty where
  toJSON DatabaseConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ColumnConfiguration" JSON..= columnConfiguration,
               "ConnectionConfiguration" JSON..= connectionConfiguration,
               "DatabaseEngineType" JSON..= databaseEngineType]
              (Prelude.catMaybes
                 [(JSON..=) "AclConfiguration" Prelude.<$> aclConfiguration,
                  (JSON..=) "SqlConfiguration" Prelude.<$> sqlConfiguration,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "AclConfiguration" DatabaseConfigurationProperty where
  type PropertyType "AclConfiguration" DatabaseConfigurationProperty = AclConfigurationProperty
  set newValue DatabaseConfigurationProperty {..}
    = DatabaseConfigurationProperty
        {aclConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnConfiguration" DatabaseConfigurationProperty where
  type PropertyType "ColumnConfiguration" DatabaseConfigurationProperty = ColumnConfigurationProperty
  set newValue DatabaseConfigurationProperty {..}
    = DatabaseConfigurationProperty
        {columnConfiguration = newValue, ..}
instance Property "ConnectionConfiguration" DatabaseConfigurationProperty where
  type PropertyType "ConnectionConfiguration" DatabaseConfigurationProperty = ConnectionConfigurationProperty
  set newValue DatabaseConfigurationProperty {..}
    = DatabaseConfigurationProperty
        {connectionConfiguration = newValue, ..}
instance Property "DatabaseEngineType" DatabaseConfigurationProperty where
  type PropertyType "DatabaseEngineType" DatabaseConfigurationProperty = Value Prelude.Text
  set newValue DatabaseConfigurationProperty {..}
    = DatabaseConfigurationProperty {databaseEngineType = newValue, ..}
instance Property "SqlConfiguration" DatabaseConfigurationProperty where
  type PropertyType "SqlConfiguration" DatabaseConfigurationProperty = SqlConfigurationProperty
  set newValue DatabaseConfigurationProperty {..}
    = DatabaseConfigurationProperty
        {sqlConfiguration = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" DatabaseConfigurationProperty where
  type PropertyType "VpcConfiguration" DatabaseConfigurationProperty = DataSourceVpcConfigurationProperty
  set newValue DatabaseConfigurationProperty {..}
    = DatabaseConfigurationProperty
        {vpcConfiguration = Prelude.pure newValue, ..}