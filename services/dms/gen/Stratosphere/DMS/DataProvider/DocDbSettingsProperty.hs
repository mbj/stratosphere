module Stratosphere.DMS.DataProvider.DocDbSettingsProperty (
        DocDbSettingsProperty(..), mkDocDbSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocDbSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-docdbsettings.html>
    DocDbSettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-docdbsettings.html#cfn-dms-dataprovider-docdbsettings-certificatearn>
                           certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-docdbsettings.html#cfn-dms-dataprovider-docdbsettings-databasename>
                           databaseName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-docdbsettings.html#cfn-dms-dataprovider-docdbsettings-port>
                           port :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-docdbsettings.html#cfn-dms-dataprovider-docdbsettings-servername>
                           serverName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-docdbsettings.html#cfn-dms-dataprovider-docdbsettings-sslmode>
                           sslMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocDbSettingsProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text -> DocDbSettingsProperty
mkDocDbSettingsProperty databaseName port serverName
  = DocDbSettingsProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       port = port, serverName = serverName,
       certificateArn = Prelude.Nothing, sslMode = Prelude.Nothing}
instance ToResourceProperties DocDbSettingsProperty where
  toResourceProperties DocDbSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.DocDbSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
                            "ServerName" JSON..= serverName]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                               (JSON..=) "SslMode" Prelude.<$> sslMode]))}
instance JSON.ToJSON DocDbSettingsProperty where
  toJSON DocDbSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName, "Port" JSON..= port,
               "ServerName" JSON..= serverName]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                  (JSON..=) "SslMode" Prelude.<$> sslMode])))
instance Property "CertificateArn" DocDbSettingsProperty where
  type PropertyType "CertificateArn" DocDbSettingsProperty = Value Prelude.Text
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" DocDbSettingsProperty where
  type PropertyType "DatabaseName" DocDbSettingsProperty = Value Prelude.Text
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty {databaseName = newValue, ..}
instance Property "Port" DocDbSettingsProperty where
  type PropertyType "Port" DocDbSettingsProperty = Value Prelude.Integer
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty {port = newValue, ..}
instance Property "ServerName" DocDbSettingsProperty where
  type PropertyType "ServerName" DocDbSettingsProperty = Value Prelude.Text
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty {serverName = newValue, ..}
instance Property "SslMode" DocDbSettingsProperty where
  type PropertyType "SslMode" DocDbSettingsProperty = Value Prelude.Text
  set newValue DocDbSettingsProperty {..}
    = DocDbSettingsProperty {sslMode = Prelude.pure newValue, ..}