module Stratosphere.DMS.Endpoint.MongoDbSettingsProperty (
        MongoDbSettingsProperty(..), mkMongoDbSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MongoDbSettingsProperty
  = MongoDbSettingsProperty {authMechanism :: (Prelude.Maybe (Value Prelude.Text)),
                             authSource :: (Prelude.Maybe (Value Prelude.Text)),
                             authType :: (Prelude.Maybe (Value Prelude.Text)),
                             databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                             docsToInvestigate :: (Prelude.Maybe (Value Prelude.Text)),
                             extractDocId :: (Prelude.Maybe (Value Prelude.Text)),
                             nestingLevel :: (Prelude.Maybe (Value Prelude.Text)),
                             password :: (Prelude.Maybe (Value Prelude.Text)),
                             port :: (Prelude.Maybe (Value Prelude.Integer)),
                             secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                             secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                             serverName :: (Prelude.Maybe (Value Prelude.Text)),
                             username :: (Prelude.Maybe (Value Prelude.Text))}
mkMongoDbSettingsProperty :: MongoDbSettingsProperty
mkMongoDbSettingsProperty
  = MongoDbSettingsProperty
      {authMechanism = Prelude.Nothing, authSource = Prelude.Nothing,
       authType = Prelude.Nothing, databaseName = Prelude.Nothing,
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