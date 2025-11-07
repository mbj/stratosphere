module Stratosphere.DMS.DataProvider.MariaDbSettingsProperty (
        MariaDbSettingsProperty(..), mkMariaDbSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MariaDbSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mariadbsettings.html>
    MariaDbSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mariadbsettings.html#cfn-dms-dataprovider-mariadbsettings-certificatearn>
                             certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mariadbsettings.html#cfn-dms-dataprovider-mariadbsettings-port>
                             port :: (Value Prelude.Integer),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mariadbsettings.html#cfn-dms-dataprovider-mariadbsettings-servername>
                             serverName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mariadbsettings.html#cfn-dms-dataprovider-mariadbsettings-sslmode>
                             sslMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMariaDbSettingsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Text -> MariaDbSettingsProperty
mkMariaDbSettingsProperty port serverName sslMode
  = MariaDbSettingsProperty
      {haddock_workaround_ = (), port = port, serverName = serverName,
       sslMode = sslMode, certificateArn = Prelude.Nothing}
instance ToResourceProperties MariaDbSettingsProperty where
  toResourceProperties MariaDbSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.MariaDbSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Port" JSON..= port, "ServerName" JSON..= serverName,
                            "SslMode" JSON..= sslMode]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn]))}
instance JSON.ToJSON MariaDbSettingsProperty where
  toJSON MariaDbSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Port" JSON..= port, "ServerName" JSON..= serverName,
               "SslMode" JSON..= sslMode]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateArn" Prelude.<$> certificateArn])))
instance Property "CertificateArn" MariaDbSettingsProperty where
  type PropertyType "CertificateArn" MariaDbSettingsProperty = Value Prelude.Text
  set newValue MariaDbSettingsProperty {..}
    = MariaDbSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "Port" MariaDbSettingsProperty where
  type PropertyType "Port" MariaDbSettingsProperty = Value Prelude.Integer
  set newValue MariaDbSettingsProperty {..}
    = MariaDbSettingsProperty {port = newValue, ..}
instance Property "ServerName" MariaDbSettingsProperty where
  type PropertyType "ServerName" MariaDbSettingsProperty = Value Prelude.Text
  set newValue MariaDbSettingsProperty {..}
    = MariaDbSettingsProperty {serverName = newValue, ..}
instance Property "SslMode" MariaDbSettingsProperty where
  type PropertyType "SslMode" MariaDbSettingsProperty = Value Prelude.Text
  set newValue MariaDbSettingsProperty {..}
    = MariaDbSettingsProperty {sslMode = newValue, ..}