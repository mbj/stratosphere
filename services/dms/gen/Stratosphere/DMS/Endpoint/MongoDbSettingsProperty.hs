module Stratosphere.DMS.Endpoint.MongoDbSettingsProperty (
        MongoDbSettingsProperty(..), mkMongoDbSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MongoDbSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html>
    MongoDbSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-authmechanism>
                             authMechanism :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-authsource>
                             authSource :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-authtype>
                             authType :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-databasename>
                             databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-docstoinvestigate>
                             docsToInvestigate :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-extractdocid>
                             extractDocId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-nestinglevel>
                             nestingLevel :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-password>
                             password :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-port>
                             port :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-secretsmanageraccessrolearn>
                             secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-secretsmanagersecretid>
                             secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-servername>
                             serverName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-username>
                             username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMongoDbSettingsProperty :: MongoDbSettingsProperty
mkMongoDbSettingsProperty
  = MongoDbSettingsProperty
      {haddock_workaround_ = (), authMechanism = Prelude.Nothing,
       authSource = Prelude.Nothing, authType = Prelude.Nothing,
       databaseName = Prelude.Nothing,
       docsToInvestigate = Prelude.Nothing,
       extractDocId = Prelude.Nothing, nestingLevel = Prelude.Nothing,
       password = Prelude.Nothing, port = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing,
       serverName = Prelude.Nothing, username = Prelude.Nothing}
instance ToResourceProperties MongoDbSettingsProperty where
  toResourceProperties MongoDbSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.MongoDbSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthMechanism" Prelude.<$> authMechanism,
                            (JSON..=) "AuthSource" Prelude.<$> authSource,
                            (JSON..=) "AuthType" Prelude.<$> authType,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "DocsToInvestigate" Prelude.<$> docsToInvestigate,
                            (JSON..=) "ExtractDocId" Prelude.<$> extractDocId,
                            (JSON..=) "NestingLevel" Prelude.<$> nestingLevel,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId,
                            (JSON..=) "ServerName" Prelude.<$> serverName,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON MongoDbSettingsProperty where
  toJSON MongoDbSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthMechanism" Prelude.<$> authMechanism,
               (JSON..=) "AuthSource" Prelude.<$> authSource,
               (JSON..=) "AuthType" Prelude.<$> authType,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "DocsToInvestigate" Prelude.<$> docsToInvestigate,
               (JSON..=) "ExtractDocId" Prelude.<$> extractDocId,
               (JSON..=) "NestingLevel" Prelude.<$> nestingLevel,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId,
               (JSON..=) "ServerName" Prelude.<$> serverName,
               (JSON..=) "Username" Prelude.<$> username]))
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
instance Property "DatabaseName" MongoDbSettingsProperty where
  type PropertyType "DatabaseName" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "DocsToInvestigate" MongoDbSettingsProperty where
  type PropertyType "DocsToInvestigate" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty
        {docsToInvestigate = Prelude.pure newValue, ..}
instance Property "ExtractDocId" MongoDbSettingsProperty where
  type PropertyType "ExtractDocId" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty
        {extractDocId = Prelude.pure newValue, ..}
instance Property "NestingLevel" MongoDbSettingsProperty where
  type PropertyType "NestingLevel" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty
        {nestingLevel = Prelude.pure newValue, ..}
instance Property "Password" MongoDbSettingsProperty where
  type PropertyType "Password" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty {password = Prelude.pure newValue, ..}
instance Property "Port" MongoDbSettingsProperty where
  type PropertyType "Port" MongoDbSettingsProperty = Value Prelude.Integer
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty {port = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" MongoDbSettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" MongoDbSettingsProperty where
  type PropertyType "SecretsManagerSecretId" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}
instance Property "ServerName" MongoDbSettingsProperty where
  type PropertyType "ServerName" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty {serverName = Prelude.pure newValue, ..}
instance Property "Username" MongoDbSettingsProperty where
  type PropertyType "Username" MongoDbSettingsProperty = Value Prelude.Text
  set newValue MongoDbSettingsProperty {..}
    = MongoDbSettingsProperty {username = Prelude.pure newValue, ..}