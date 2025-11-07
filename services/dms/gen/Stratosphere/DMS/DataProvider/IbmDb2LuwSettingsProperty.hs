module Stratosphere.DMS.DataProvider.IbmDb2LuwSettingsProperty (
        IbmDb2LuwSettingsProperty(..), mkIbmDb2LuwSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IbmDb2LuwSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2luwsettings.html>
    IbmDb2LuwSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2luwsettings.html#cfn-dms-dataprovider-ibmdb2luwsettings-certificatearn>
                               certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2luwsettings.html#cfn-dms-dataprovider-ibmdb2luwsettings-databasename>
                               databaseName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2luwsettings.html#cfn-dms-dataprovider-ibmdb2luwsettings-port>
                               port :: (Value Prelude.Integer),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2luwsettings.html#cfn-dms-dataprovider-ibmdb2luwsettings-servername>
                               serverName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2luwsettings.html#cfn-dms-dataprovider-ibmdb2luwsettings-sslmode>
                               sslMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIbmDb2LuwSettingsProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text -> IbmDb2LuwSettingsProperty
mkIbmDb2LuwSettingsProperty databaseName port serverName sslMode
  = IbmDb2LuwSettingsProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       port = port, serverName = serverName, sslMode = sslMode,
       certificateArn = Prelude.Nothing}
instance ToResourceProperties IbmDb2LuwSettingsProperty where
  toResourceProperties IbmDb2LuwSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.IbmDb2LuwSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
                            "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn]))}
instance JSON.ToJSON IbmDb2LuwSettingsProperty where
  toJSON IbmDb2LuwSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
               "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateArn" Prelude.<$> certificateArn])))
instance Property "CertificateArn" IbmDb2LuwSettingsProperty where
  type PropertyType "CertificateArn" IbmDb2LuwSettingsProperty = Value Prelude.Text
  set newValue IbmDb2LuwSettingsProperty {..}
    = IbmDb2LuwSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" IbmDb2LuwSettingsProperty where
  type PropertyType "DatabaseName" IbmDb2LuwSettingsProperty = Value Prelude.Text
  set newValue IbmDb2LuwSettingsProperty {..}
    = IbmDb2LuwSettingsProperty {databaseName = newValue, ..}
instance Property "Port" IbmDb2LuwSettingsProperty where
  type PropertyType "Port" IbmDb2LuwSettingsProperty = Value Prelude.Integer
  set newValue IbmDb2LuwSettingsProperty {..}
    = IbmDb2LuwSettingsProperty {port = newValue, ..}
instance Property "ServerName" IbmDb2LuwSettingsProperty where
  type PropertyType "ServerName" IbmDb2LuwSettingsProperty = Value Prelude.Text
  set newValue IbmDb2LuwSettingsProperty {..}
    = IbmDb2LuwSettingsProperty {serverName = newValue, ..}
instance Property "SslMode" IbmDb2LuwSettingsProperty where
  type PropertyType "SslMode" IbmDb2LuwSettingsProperty = Value Prelude.Text
  set newValue IbmDb2LuwSettingsProperty {..}
    = IbmDb2LuwSettingsProperty {sslMode = newValue, ..}