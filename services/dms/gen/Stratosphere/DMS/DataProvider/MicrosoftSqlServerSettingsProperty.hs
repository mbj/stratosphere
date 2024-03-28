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
                                        databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                        port :: (Prelude.Maybe (Value Prelude.Integer)),
                                        serverName :: (Prelude.Maybe (Value Prelude.Text)),
                                        sslMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMicrosoftSqlServerSettingsProperty ::
  MicrosoftSqlServerSettingsProperty
mkMicrosoftSqlServerSettingsProperty
  = MicrosoftSqlServerSettingsProperty
      {certificateArn = Prelude.Nothing, databaseName = Prelude.Nothing,
       port = Prelude.Nothing, serverName = Prelude.Nothing,
       sslMode = Prelude.Nothing}
instance ToResourceProperties MicrosoftSqlServerSettingsProperty where
  toResourceProperties MicrosoftSqlServerSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.MicrosoftSqlServerSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "ServerName" Prelude.<$> serverName,
                            (JSON..=) "SslMode" Prelude.<$> sslMode])}
instance JSON.ToJSON MicrosoftSqlServerSettingsProperty where
  toJSON MicrosoftSqlServerSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "ServerName" Prelude.<$> serverName,
               (JSON..=) "SslMode" Prelude.<$> sslMode]))
instance Property "CertificateArn" MicrosoftSqlServerSettingsProperty where
  type PropertyType "CertificateArn" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" MicrosoftSqlServerSettingsProperty where
  type PropertyType "DatabaseName" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "Port" MicrosoftSqlServerSettingsProperty where
  type PropertyType "Port" MicrosoftSqlServerSettingsProperty = Value Prelude.Integer
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {port = Prelude.pure newValue, ..}
instance Property "ServerName" MicrosoftSqlServerSettingsProperty where
  type PropertyType "ServerName" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {serverName = Prelude.pure newValue, ..}
instance Property "SslMode" MicrosoftSqlServerSettingsProperty where
  type PropertyType "SslMode" MicrosoftSqlServerSettingsProperty = Value Prelude.Text
  set newValue MicrosoftSqlServerSettingsProperty {..}
    = MicrosoftSqlServerSettingsProperty
        {sslMode = Prelude.pure newValue, ..}