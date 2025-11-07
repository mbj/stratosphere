module Stratosphere.DMS.DataProvider.MongoDbSettingsProperty (
        MongoDbSettingsProperty(..), mkMongoDbSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MongoDbSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mongodbsettings.html>
    MongoDbSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mongodbsettings.html#cfn-dms-dataprovider-mongodbsettings-authmechanism>
                             authMechanism :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mongodbsettings.html#cfn-dms-dataprovider-mongodbsettings-authsource>
                             authSource :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mongodbsettings.html#cfn-dms-dataprovider-mongodbsettings-authtype>
                             authType :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mongodbsettings.html#cfn-dms-dataprovider-mongodbsettings-certificatearn>
                             certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mongodbsettings.html#cfn-dms-dataprovider-mongodbsettings-databasename>
                             databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mongodbsettings.html#cfn-dms-dataprovider-mongodbsettings-port>
                             port :: (Value Prelude.Integer),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mongodbsettings.html#cfn-dms-dataprovider-mongodbsettings-servername>
                             serverName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-mongodbsettings.html#cfn-dms-dataprovider-mongodbsettings-sslmode>
                             sslMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMongoDbSettingsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> MongoDbSettingsProperty
mkMongoDbSettingsProperty port serverName
  = MongoDbSettingsProperty
      {haddock_workaround_ = (), port = port, serverName = serverName,
       authMechanism = Prelude.Nothing, authSource = Prelude.Nothing,
       authType = Prelude.Nothing, certificateArn = Prelude.Nothing,
       databaseName = Prelude.Nothing, sslMode = Prelude.Nothing}
instance ToResourceProperties MongoDbSettingsProperty where
  toResourceProperties MongoDbSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataProvider.MongoDbSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Port" JSON..= port, "ServerName" JSON..= serverName]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthMechanism" Prelude.<$> authMechanism,
                               (JSON..=) "AuthSource" Prelude.<$> authSource,
                               (JSON..=) "AuthType" Prelude.<$> authType,
                               (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                               (JSON..=) "SslMode" Prelude.<$> sslMode]))}
instance JSON.ToJSON MongoDbSettingsProperty where
  toJSON MongoDbSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Port" JSON..= port, "ServerName" JSON..= serverName]
              (Prelude.catMaybes
                 [(JSON..=) "AuthMechanism" Prelude.<$> authMechanism,
                  (JSON..=) "AuthSource" Prelude.<$> authSource,
                  (JSON..=) "AuthType" Prelude.<$> authType,
                  (JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                  (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                  (JSON..=) "SslMode" Prelude.<$> sslMode])))
instance Property "AuthMechanism" MongoDbSettingsProperty where
  type PropertyType "AuthMechanism" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty
        {authMechanism = Prelude.pure newValue, ..}
instance Property "AuthSource" MongoDbSettingsProperty where
  type PropertyType "AuthSource" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty {authSource = Prelude.pure newValue, ..}
instance Property "AuthType" MongoDbSettingsProperty where
  type PropertyType "AuthType" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty {authType = Prelude.pure newValue, ..}
instance Property "CertificateArn" MongoDbSettingsProperty where
  type PropertyType "CertificateArn" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" MongoDbSettingsProperty where
  type PropertyType "DatabaseName" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "Port" MongoDbSettingsProperty where
  type PropertyType "Port" MongoDbSettingsProperty = Value Prelude.Integer
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty {port = newValue, ..}
instance Property "ServerName" MongoDbSettingsProperty where
  type PropertyType "ServerName" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty {serverName = newValue, ..}
instance Property "SslMode" MongoDbSettingsProperty where
  type PropertyType "SslMode" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty {sslMode = Prelude.pure newValue, ..}