module Stratosphere.Bedrock.KnowledgeBase.RdsConfigurationProperty (
        module Exports, RdsConfigurationProperty(..),
        mkRdsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RdsFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RdsConfigurationProperty
  = RdsConfigurationProperty {credentialsSecretArn :: (Value Prelude.Text),
                              databaseName :: (Value Prelude.Text),
                              fieldMapping :: RdsFieldMappingProperty,
                              resourceArn :: (Value Prelude.Text),
                              tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRdsConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> RdsFieldMappingProperty
        -> Value Prelude.Text
           -> Value Prelude.Text -> RdsConfigurationProperty
mkRdsConfigurationProperty
  credentialsSecretArn
  databaseName
  fieldMapping
  resourceArn
  tableName
  = RdsConfigurationProperty
      {credentialsSecretArn = credentialsSecretArn,
       databaseName = databaseName, fieldMapping = fieldMapping,
       resourceArn = resourceArn, tableName = tableName}
instance ToResourceProperties RdsConfigurationProperty where
  toResourceProperties RdsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RdsConfiguration",
         supportsTags = Prelude.False,
         properties = ["CredentialsSecretArn" JSON..= credentialsSecretArn,
                       "DatabaseName" JSON..= databaseName,
                       "FieldMapping" JSON..= fieldMapping,
                       "ResourceArn" JSON..= resourceArn, "TableName" JSON..= tableName]}
instance JSON.ToJSON RdsConfigurationProperty where
  toJSON RdsConfigurationProperty {..}
    = JSON.object
        ["CredentialsSecretArn" JSON..= credentialsSecretArn,
         "DatabaseName" JSON..= databaseName,
         "FieldMapping" JSON..= fieldMapping,
         "ResourceArn" JSON..= resourceArn, "TableName" JSON..= tableName]
instance Property "CredentialsSecretArn" RdsConfigurationProperty where
  type PropertyType "CredentialsSecretArn" RdsConfigurationProperty = Value Prelude.Text
  set newValue RdsConfigurationProperty {..}
    = RdsConfigurationProperty {credentialsSecretArn = newValue, ..}
instance Property "DatabaseName" RdsConfigurationProperty where
  type PropertyType "DatabaseName" RdsConfigurationProperty = Value Prelude.Text
  set newValue RdsConfigurationProperty {..}
    = RdsConfigurationProperty {databaseName = newValue, ..}
instance Property "FieldMapping" RdsConfigurationProperty where
  type PropertyType "FieldMapping" RdsConfigurationProperty = RdsFieldMappingProperty
  set newValue RdsConfigurationProperty {..}
    = RdsConfigurationProperty {fieldMapping = newValue, ..}
instance Property "ResourceArn" RdsConfigurationProperty where
  type PropertyType "ResourceArn" RdsConfigurationProperty = Value Prelude.Text
  set newValue RdsConfigurationProperty {..}
    = RdsConfigurationProperty {resourceArn = newValue, ..}
instance Property "TableName" RdsConfigurationProperty where
  type PropertyType "TableName" RdsConfigurationProperty = Value Prelude.Text
  set newValue RdsConfigurationProperty {..}
    = RdsConfigurationProperty {tableName = newValue, ..}