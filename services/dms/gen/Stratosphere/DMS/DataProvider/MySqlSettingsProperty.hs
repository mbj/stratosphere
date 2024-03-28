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
                           port :: (Prelude.Maybe (Value Prelude.Integer)),
                           serverName :: (Prelude.Maybe (Value Prelude.Text)),
                           sslMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMySqlSettingsProperty :: MySqlSettingsProperty
mkMySqlSettingsProperty
  = MySqlSettingsProperty
      {certificateArn = Prelude.Nothing, port = Prelude.Nothing,
       serverName = Prelude.Nothing, sslMode = Prelude.Nothing}
instance ToResourceProperties MySqlSettingsProperty where
  toResourceProperties MySqlSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.MySqlSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "ServerName" Prelude.<$> serverName,
                            (JSON..=) "SslMode" Prelude.<$> sslMode])}
instance JSON.ToJSON MySqlSettingsProperty where
  toJSON MySqlSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "ServerName" Prelude.<$> serverName,
               (JSON..=) "SslMode" Prelude.<$> sslMode]))
instance Property "CertificateArn" MySqlSettingsProperty where
  type PropertyType "CertificateArn" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "Port" MySqlSettingsProperty where
  type PropertyType "Port" MySqlSettingsProperty = Value Prelude.Integer
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty {port = Prelude.pure newValue, ..}
instance Property "ServerName" MySqlSettingsProperty where
  type PropertyType "ServerName" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty {serverName = Prelude.pure newValue, ..}
instance Property "SslMode" MySqlSettingsProperty where
  type PropertyType "SslMode" MySqlSettingsProperty = Value Prelude.Text
  set newValue MySqlSettingsProperty {..}
    = MySqlSettingsProperty {sslMode = Prelude.pure newValue, ..}