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
                                databaseName :: (Value Prelude.Text),
                                port :: (Value Prelude.Integer),
                                serverName :: (Value Prelude.Text),
                                sslMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPostgreSqlSettingsProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text -> PostgreSqlSettingsProperty
mkPostgreSqlSettingsProperty databaseName port serverName sslMode
  = PostgreSqlSettingsProperty
      {databaseName = databaseName, port = port, serverName = serverName,
       sslMode = sslMode, certificateArn = Prelude.Nothing}
instance ToResourceProperties PostgreSqlSettingsProperty where
  toResourceProperties PostgreSqlSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.PostgreSqlSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
                            "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn]))}
instance JSON.ToJSON PostgreSqlSettingsProperty where
  toJSON PostgreSqlSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
               "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateArn" Prelude.<$> certificateArn])))
instance Property "CertificateArn" PostgreSqlSettingsProperty where
  type PropertyType "CertificateArn" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" PostgreSqlSettingsProperty where
  type PropertyType "DatabaseName" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty {databaseName = newValue, ..}
instance Property "Port" PostgreSqlSettingsProperty where
  type PropertyType "Port" PostgreSqlSettingsProperty = Value Prelude.Integer
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty {port = newValue, ..}
instance Property "ServerName" PostgreSqlSettingsProperty where
  type PropertyType "ServerName" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty {serverName = newValue, ..}
instance Property "SslMode" PostgreSqlSettingsProperty where
  type PropertyType "SslMode" PostgreSqlSettingsProperty = Value Prelude.Text
  set newValue PostgreSqlSettingsProperty {..}
    = PostgreSqlSettingsProperty {sslMode = newValue, ..}