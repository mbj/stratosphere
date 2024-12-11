module Stratosphere.Bedrock.KnowledgeBase.MongoDbAtlasConfigurationProperty (
        module Exports, MongoDbAtlasConfigurationProperty(..),
        mkMongoDbAtlasConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.MongoDbAtlasFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MongoDbAtlasConfigurationProperty
  = MongoDbAtlasConfigurationProperty {collectionName :: (Value Prelude.Text),
                                       credentialsSecretArn :: (Value Prelude.Text),
                                       databaseName :: (Value Prelude.Text),
                                       endpoint :: (Value Prelude.Text),
                                       endpointServiceName :: (Prelude.Maybe (Value Prelude.Text)),
                                       fieldMapping :: MongoDbAtlasFieldMappingProperty,
                                       vectorIndexName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMongoDbAtlasConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> MongoDbAtlasFieldMappingProperty
              -> Value Prelude.Text -> MongoDbAtlasConfigurationProperty
mkMongoDbAtlasConfigurationProperty
  collectionName
  credentialsSecretArn
  databaseName
  endpoint
  fieldMapping
  vectorIndexName
  = MongoDbAtlasConfigurationProperty
      {collectionName = collectionName,
       credentialsSecretArn = credentialsSecretArn,
       databaseName = databaseName, endpoint = endpoint,
       fieldMapping = fieldMapping, vectorIndexName = vectorIndexName,
       endpointServiceName = Prelude.Nothing}
instance ToResourceProperties MongoDbAtlasConfigurationProperty where
  toResourceProperties MongoDbAtlasConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.MongoDbAtlasConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CollectionName" JSON..= collectionName,
                            "CredentialsSecretArn" JSON..= credentialsSecretArn,
                            "DatabaseName" JSON..= databaseName, "Endpoint" JSON..= endpoint,
                            "FieldMapping" JSON..= fieldMapping,
                            "VectorIndexName" JSON..= vectorIndexName]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointServiceName"
                                 Prelude.<$> endpointServiceName]))}
instance JSON.ToJSON MongoDbAtlasConfigurationProperty where
  toJSON MongoDbAtlasConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CollectionName" JSON..= collectionName,
               "CredentialsSecretArn" JSON..= credentialsSecretArn,
               "DatabaseName" JSON..= databaseName, "Endpoint" JSON..= endpoint,
               "FieldMapping" JSON..= fieldMapping,
               "VectorIndexName" JSON..= vectorIndexName]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointServiceName"
                    Prelude.<$> endpointServiceName])))
instance Property "CollectionName" MongoDbAtlasConfigurationProperty where
  type PropertyType "CollectionName" MongoDbAtlasConfigurationProperty = Value Prelude.Text
  set newValue MongoDbAtlasConfigurationProperty {..}
    = MongoDbAtlasConfigurationProperty {collectionName = newValue, ..}
instance Property "CredentialsSecretArn" MongoDbAtlasConfigurationProperty where
  type PropertyType "CredentialsSecretArn" MongoDbAtlasConfigurationProperty = Value Prelude.Text
  set newValue MongoDbAtlasConfigurationProperty {..}
    = MongoDbAtlasConfigurationProperty
        {credentialsSecretArn = newValue, ..}
instance Property "DatabaseName" MongoDbAtlasConfigurationProperty where
  type PropertyType "DatabaseName" MongoDbAtlasConfigurationProperty = Value Prelude.Text
  set newValue MongoDbAtlasConfigurationProperty {..}
    = MongoDbAtlasConfigurationProperty {databaseName = newValue, ..}
instance Property "Endpoint" MongoDbAtlasConfigurationProperty where
  type PropertyType "Endpoint" MongoDbAtlasConfigurationProperty = Value Prelude.Text
  set newValue MongoDbAtlasConfigurationProperty {..}
    = MongoDbAtlasConfigurationProperty {endpoint = newValue, ..}
instance Property "EndpointServiceName" MongoDbAtlasConfigurationProperty where
  type PropertyType "EndpointServiceName" MongoDbAtlasConfigurationProperty = Value Prelude.Text
  set newValue MongoDbAtlasConfigurationProperty {..}
    = MongoDbAtlasConfigurationProperty
        {endpointServiceName = Prelude.pure newValue, ..}
instance Property "FieldMapping" MongoDbAtlasConfigurationProperty where
  type PropertyType "FieldMapping" MongoDbAtlasConfigurationProperty = MongoDbAtlasFieldMappingProperty
  set newValue MongoDbAtlasConfigurationProperty {..}
    = MongoDbAtlasConfigurationProperty {fieldMapping = newValue, ..}
instance Property "VectorIndexName" MongoDbAtlasConfigurationProperty where
  type PropertyType "VectorIndexName" MongoDbAtlasConfigurationProperty = Value Prelude.Text
  set newValue MongoDbAtlasConfigurationProperty {..}
    = MongoDbAtlasConfigurationProperty
        {vectorIndexName = newValue, ..}