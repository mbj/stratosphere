module Stratosphere.DMS.DataProvider.MySqlSettingsProperty (
        MySqlSettingsProperty(..), mkMySqlSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MySqlSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mysqlsettings.html>
    MySqlSettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mysqlsettings.html#cfn-dms-dataprovider-mysqlsettings-certificatearn>
                           certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mysqlsettings.html#cfn-dms-dataprovider-mysqlsettings-port>
                           port :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mysqlsettings.html#cfn-dms-dataprovider-mysqlsettings-servername>
                           serverName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mysqlsettings.html#cfn-dms-dataprovider-mysqlsettings-sslmode>
                           sslMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMySqlSettingsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Text -> MySqlSettingsProperty
mkMySqlSettingsProperty port serverName sslMode
  = MySqlSettingsProperty
      {haddock_workaround_ = (), port = port, serverName = serverName,
       sslMode = sslMode, certificateArn = Prelude.Nothing}
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