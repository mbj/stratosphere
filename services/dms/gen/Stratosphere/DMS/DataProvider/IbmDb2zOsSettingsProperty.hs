module Stratosphere.DMS.DataProvider.IbmDb2zOsSettingsProperty (
        IbmDb2zOsSettingsProperty(..), mkIbmDb2zOsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IbmDb2zOsSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2zossettings.html>
    IbmDb2zOsSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2zossettings.html#cfn-dms-dataprovider-ibmdb2zossettings-certificatearn>
                               certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2zossettings.html#cfn-dms-dataprovider-ibmdb2zossettings-databasename>
                               databaseName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2zossettings.html#cfn-dms-dataprovider-ibmdb2zossettings-port>
                               port :: (Value Prelude.Integer),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2zossettings.html#cfn-dms-dataprovider-ibmdb2zossettings-servername>
                               serverName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-ibmdb2zossettings.html#cfn-dms-dataprovider-ibmdb2zossettings-sslmode>
                               sslMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIbmDb2zOsSettingsProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text -> IbmDb2zOsSettingsProperty
mkIbmDb2zOsSettingsProperty databaseName port serverName sslMode
  = IbmDb2zOsSettingsProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       port = port, serverName = serverName, sslMode = sslMode,
       certificateArn = Prelude.Nothing}
instance ToResourceProperties IbmDb2zOsSettingsProperty where
  toResourceProperties IbmDb2zOsSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.IbmDb2zOsSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
                            "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn]))}
instance JSON.ToJSON IbmDb2zOsSettingsProperty where
  toJSON IbmDb2zOsSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
               "ServerName" JSON..= serverName, "SslMode" JSON..= sslMode]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateArn" Prelude.<$> certificateArn])))
instance Property "CertificateArn" IbmDb2zOsSettingsProperty where
  type PropertyType "CertificateArn" IbmDb2zOsSettingsProperty = Value Prelude.Text
  set newValue IbmDb2zOsSettingsProperty {..}
    = IbmDb2zOsSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" IbmDb2zOsSettingsProperty where
  type PropertyType "DatabaseName" IbmDb2zOsSettingsProperty = Value Prelude.Text
  set newValue IbmDb2zOsSettingsProperty {..}
    = IbmDb2zOsSettingsProperty {databaseName = newValue, ..}
instance Property "Port" IbmDb2zOsSettingsProperty where
  type PropertyType "Port" IbmDb2zOsSettingsProperty = Value Prelude.Integer
  set newValue IbmDb2zOsSettingsProperty {..}
    = IbmDb2zOsSettingsProperty {port = newValue, ..}
instance Property "ServerName" IbmDb2zOsSettingsProperty where
  type PropertyType "ServerName" IbmDb2zOsSettingsProperty = Value Prelude.Text
  set newValue IbmDb2zOsSettingsProperty {..}
    = IbmDb2zOsSettingsProperty {serverName = newValue, ..}
instance Property "SslMode" IbmDb2zOsSettingsProperty where
  type PropertyType "SslMode" IbmDb2zOsSettingsProperty = Value Prelude.Text
  set newValue IbmDb2zOsSettingsProperty {..}
    = IbmDb2zOsSettingsProperty {sslMode = newValue, ..}