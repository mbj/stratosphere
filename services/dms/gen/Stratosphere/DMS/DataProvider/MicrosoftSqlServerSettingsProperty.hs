module Stratosphere.DMS.DataProvider.MicrosoftSqlServerSettingsProperty (
        MicrosoftSqlServerSettingsProperty(..),
        mkMicrosoftSqlServerSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MicrosoftSqlServerSettingsProperty
  = MicrosoftSqlServerSettingsProperty {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                                        databaseName :: (Value Prelude.Text),
                                        port :: (Value Prelude.Integer),
                                        serverName :: (Value Prelude.Text),
                                        sslMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMicrosoftSqlServerSettingsProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text -> MicrosoftSqlServerSettingsProperty
mkMicrosoftSqlServerSettingsProperty
  databaseName
  port
  serverName
  sslMode
  = MicrosoftSqlServerSettingsProperty
      {databaseName = databaseName, port = port, serverName = serverName,
       sslMode = sslMode, certificateArn = Prelude.Nothing}
instance ToResourceProperties MicrosoftSqlServerSettingsProperty where
  toResourceProperties MicrosoftSqlServerSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.MicrosoftSqlServerSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
                            "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn]))}
instance JSON.ToJSON MicrosoftSqlServerSettingsProperty where
  toJSON MicrosoftSqlServerSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
               "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateArn" Prelude.<$> certificateArn])))
instance Property "CertificateArn" MicrosoftSqlServerSettingsProperty where
  type PropertyType "CertificateArn" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" MicrosoftSqlServerSettingsProperty where
  type PropertyType "DatabaseName" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty {databaseName = newValue, ..}
instance Property "Port" MicrosoftSqlServerSettingsProperty where
  type PropertyType "Port" MicrosoftSqlServerSettingsProperty = Value Prelude.Integer
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty {port = newValue, ..}
instance Property "ServerName" MicrosoftSqlServerSettingsProperty where
  type PropertyType "ServerName" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty {serverName = newValue, ..}
instance Property "SslMode" MicrosoftSqlServerSettingsProperty where
  type PropertyType "SslMode" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty {sslMode = newValue, ..}