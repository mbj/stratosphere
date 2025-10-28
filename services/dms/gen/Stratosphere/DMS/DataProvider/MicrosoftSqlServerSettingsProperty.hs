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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-microsoftsqlserversettings.html>
    MicrosoftSqlServerSettingsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-microsoftsqlserversettings.html#cfn-dms-dataprovider-microsoftsqlserversettings-certificatearn>
                                        certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-microsoftsqlserversettings.html#cfn-dms-dataprovider-microsoftsqlserversettings-databasename>
                                        databaseName :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-microsoftsqlserversettings.html#cfn-dms-dataprovider-microsoftsqlserversettings-port>
                                        port :: (Value Prelude.Integer),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-microsoftsqlserversettings.html#cfn-dms-dataprovider-microsoftsqlserversettings-servername>
                                        serverName :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-microsoftsqlserversettings.html#cfn-dms-dataprovider-microsoftsqlserversettings-sslmode>
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
      {haddock_workaround_ = (), databaseName = databaseName,
       port = port, serverName = serverName, sslMode = sslMode,
       certificateArn = Prelude.Nothing}
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