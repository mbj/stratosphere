module Stratosphere.DMS.DataProvider.PostgreSqlSettingsProperty (
        PostgreSqlSettingsProperty(..), mkPostgreSqlSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PostgreSqlSettingsProperty
  = PostgreSqlSettingsProperty {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                                databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                port :: (Prelude.Maybe (Value Prelude.Integer)),
                                serverName :: (Prelude.Maybe (Value Prelude.Text)),
                                sslMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPostgreSqlSettingsProperty :: PostgreSqlSettingsProperty
mkPostgreSqlSettingsProperty
  = PostgreSqlSettingsProperty
      {certificateArn = Prelude.Nothing, databaseName = Prelude.Nothing,
       port = Prelude.Nothing, serverName = Prelude.Nothing,
       sslMode = Prelude.Nothing}
instance ToResourceProperties PostgreSqlSettingsProperty where
  toResourceProperties PostgreSqlSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.PostgreSqlSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "ServerName" Prelude.<$> serverName,
                            (JSON..=) "SslMode" Prelude.<$> sslMode])}
instance JSON.ToJSON PostgreSqlSettingsProperty where
  toJSON PostgreSqlSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "ServerName" Prelude.<$> serverName,
               (JSON..=) "SslMode" Prelude.<$> sslMode]))
instance Property "CertificateArn" PostgreSqlSettingsProperty where
  type PropertyType "CertificateArn" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" PostgreSqlSettingsProperty where
  type PropertyType "DatabaseName" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "Port" PostgreSqlSettingsProperty where
  type PropertyType "Port" PostgreSqlSettingsProperty = Value Prelude.Integer
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty {port = Prelude.pure newValue, ..}
instance Property "ServerName" PostgreSqlSettingsProperty where
  type PropertyType "ServerName" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {serverName = Prelude.pure newValue, ..}
instance Property "SslMode" PostgreSqlSettingsProperty where
  type PropertyType "SslMode" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty {sslMode = Prelude.pure newValue, ..}