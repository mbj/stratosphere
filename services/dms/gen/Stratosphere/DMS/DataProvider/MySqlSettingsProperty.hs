module Stratosphere.DMS.DataProvider.MySqlSettingsProperty (
        MySqlSettingsProperty(..), mkMySqlSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MySqlSettingsProperty
  = MySqlSettingsProperty {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                           port :: (Value Prelude.Integer),
                           serverName :: (Value Prelude.Text),
                           sslMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMySqlSettingsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Text -> MySqlSettingsProperty
mkMySqlSettingsProperty port serverName sslMode
  = MySqlSettingsProperty
      {port = port, serverName = serverName, sslMode = sslMode,
       certificateArn = Prelude.Nothing}
instance ToResourceProperties MySqlSettingsProperty where
  toResourceProperties MySqlSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.MySqlSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Port" JSON..= port, "ServerName" JSON..= serverName,
                            "SslMode" JSON..= sslMode]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn]))}
instance JSON.ToJSON MySqlSettingsProperty where
  toJSON MySqlSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Port" JSON..= port, "ServerName" JSON..= serverName,
               "SslMode" JSON..= sslMode]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateArn" Prelude.<$> certificateArn])))
instance Property "CertificateArn" MySqlSettingsProperty where
  type PropertyType "CertificateArn" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "Port" MySqlSettingsProperty where
  type PropertyType "Port" MySqlSettingsProperty = Value Prelude.Integer
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty {port = newValue, ..}
instance Property "ServerName" MySqlSettingsProperty where
  type PropertyType "ServerName" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty {serverName = newValue, ..}
instance Property "SslMode" MySqlSettingsProperty where
  type PropertyType "SslMode" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty {sslMode = newValue, ..}