module Stratosphere.KinesisFirehose.DeliveryStream.DatabaseSourceConfigurationProperty (
        module Exports, DatabaseSourceConfigurationProperty(..),
        mkDatabaseSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DatabaseColumnsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DatabaseSourceAuthenticationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DatabaseSourceVPCConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DatabaseTablesProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DatabasesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseSourceConfigurationProperty
  = DatabaseSourceConfigurationProperty {columns :: (Prelude.Maybe DatabaseColumnsProperty),
                                         databaseSourceAuthenticationConfiguration :: DatabaseSourceAuthenticationConfigurationProperty,
                                         databaseSourceVPCConfiguration :: DatabaseSourceVPCConfigurationProperty,
                                         databases :: DatabasesProperty,
                                         digest :: (Prelude.Maybe (Value Prelude.Text)),
                                         endpoint :: (Value Prelude.Text),
                                         port :: (Value Prelude.Integer),
                                         publicCertificate :: (Prelude.Maybe (Value Prelude.Text)),
                                         sSLMode :: (Prelude.Maybe (Value Prelude.Text)),
                                         snapshotWatermarkTable :: (Value Prelude.Text),
                                         surrogateKeys :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         tables :: DatabaseTablesProperty,
                                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseSourceConfigurationProperty ::
  DatabaseSourceAuthenticationConfigurationProperty
  -> DatabaseSourceVPCConfigurationProperty
     -> DatabasesProperty
        -> Value Prelude.Text
           -> Value Prelude.Integer
              -> Value Prelude.Text
                 -> DatabaseTablesProperty
                    -> Value Prelude.Text -> DatabaseSourceConfigurationProperty
mkDatabaseSourceConfigurationProperty
  databaseSourceAuthenticationConfiguration
  databaseSourceVPCConfiguration
  databases
  endpoint
  port
  snapshotWatermarkTable
  tables
  type'
  = DatabaseSourceConfigurationProperty
      {databaseSourceAuthenticationConfiguration = databaseSourceAuthenticationConfiguration,
       databaseSourceVPCConfiguration = databaseSourceVPCConfiguration,
       databases = databases, endpoint = endpoint, port = port,
       snapshotWatermarkTable = snapshotWatermarkTable, tables = tables,
       type' = type', columns = Prelude.Nothing, digest = Prelude.Nothing,
       publicCertificate = Prelude.Nothing, sSLMode = Prelude.Nothing,
       surrogateKeys = Prelude.Nothing}
instance ToResourceProperties DatabaseSourceConfigurationProperty where
  toResourceProperties DatabaseSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DatabaseSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseSourceAuthenticationConfiguration"
                              JSON..= databaseSourceAuthenticationConfiguration,
                            "DatabaseSourceVPCConfiguration"
                              JSON..= databaseSourceVPCConfiguration,
                            "Databases" JSON..= databases, "Endpoint" JSON..= endpoint,
                            "Port" JSON..= port,
                            "SnapshotWatermarkTable" JSON..= snapshotWatermarkTable,
                            "Tables" JSON..= tables, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Columns" Prelude.<$> columns,
                               (JSON..=) "Digest" Prelude.<$> digest,
                               (JSON..=) "PublicCertificate" Prelude.<$> publicCertificate,
                               (JSON..=) "SSLMode" Prelude.<$> sSLMode,
                               (JSON..=) "SurrogateKeys" Prelude.<$> surrogateKeys]))}
instance JSON.ToJSON DatabaseSourceConfigurationProperty where
  toJSON DatabaseSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseSourceAuthenticationConfiguration"
                 JSON..= databaseSourceAuthenticationConfiguration,
               "DatabaseSourceVPCConfiguration"
                 JSON..= databaseSourceVPCConfiguration,
               "Databases" JSON..= databases, "Endpoint" JSON..= endpoint,
               "Port" JSON..= port,
               "SnapshotWatermarkTable" JSON..= snapshotWatermarkTable,
               "Tables" JSON..= tables, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Columns" Prelude.<$> columns,
                  (JSON..=) "Digest" Prelude.<$> digest,
                  (JSON..=) "PublicCertificate" Prelude.<$> publicCertificate,
                  (JSON..=) "SSLMode" Prelude.<$> sSLMode,
                  (JSON..=) "SurrogateKeys" Prelude.<$> surrogateKeys])))
instance Property "Columns" DatabaseSourceConfigurationProperty where
  type PropertyType "Columns" DatabaseSourceConfigurationProperty = DatabaseColumnsProperty
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty
        {columns = Prelude.pure newValue, ..}
instance Property "DatabaseSourceAuthenticationConfiguration" DatabaseSourceConfigurationProperty where
  type PropertyType "DatabaseSourceAuthenticationConfiguration" DatabaseSourceConfigurationProperty = DatabaseSourceAuthenticationConfigurationProperty
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty
        {databaseSourceAuthenticationConfiguration = newValue, ..}
instance Property "DatabaseSourceVPCConfiguration" DatabaseSourceConfigurationProperty where
  type PropertyType "DatabaseSourceVPCConfiguration" DatabaseSourceConfigurationProperty = DatabaseSourceVPCConfigurationProperty
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty
        {databaseSourceVPCConfiguration = newValue, ..}
instance Property "Databases" DatabaseSourceConfigurationProperty where
  type PropertyType "Databases" DatabaseSourceConfigurationProperty = DatabasesProperty
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty {databases = newValue, ..}
instance Property "Digest" DatabaseSourceConfigurationProperty where
  type PropertyType "Digest" DatabaseSourceConfigurationProperty = Value Prelude.Text
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty
        {digest = Prelude.pure newValue, ..}
instance Property "Endpoint" DatabaseSourceConfigurationProperty where
  type PropertyType "Endpoint" DatabaseSourceConfigurationProperty = Value Prelude.Text
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty {endpoint = newValue, ..}
instance Property "Port" DatabaseSourceConfigurationProperty where
  type PropertyType "Port" DatabaseSourceConfigurationProperty = Value Prelude.Integer
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty {port = newValue, ..}
instance Property "PublicCertificate" DatabaseSourceConfigurationProperty where
  type PropertyType "PublicCertificate" DatabaseSourceConfigurationProperty = Value Prelude.Text
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty
        {publicCertificate = Prelude.pure newValue, ..}
instance Property "SSLMode" DatabaseSourceConfigurationProperty where
  type PropertyType "SSLMode" DatabaseSourceConfigurationProperty = Value Prelude.Text
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty
        {sSLMode = Prelude.pure newValue, ..}
instance Property "SnapshotWatermarkTable" DatabaseSourceConfigurationProperty where
  type PropertyType "SnapshotWatermarkTable" DatabaseSourceConfigurationProperty = Value Prelude.Text
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty
        {snapshotWatermarkTable = newValue, ..}
instance Property "SurrogateKeys" DatabaseSourceConfigurationProperty where
  type PropertyType "SurrogateKeys" DatabaseSourceConfigurationProperty = ValueList Prelude.Text
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty
        {surrogateKeys = Prelude.pure newValue, ..}
instance Property "Tables" DatabaseSourceConfigurationProperty where
  type PropertyType "Tables" DatabaseSourceConfigurationProperty = DatabaseTablesProperty
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty {tables = newValue, ..}
instance Property "Type" DatabaseSourceConfigurationProperty where
  type PropertyType "Type" DatabaseSourceConfigurationProperty = Value Prelude.Text
  set newValue DatabaseSourceConfigurationProperty {..}
    = DatabaseSourceConfigurationProperty {type' = newValue, ..}