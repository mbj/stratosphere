module Stratosphere.Bedrock.KnowledgeBase.OpenSearchServerlessConfigurationProperty (
        module Exports, OpenSearchServerlessConfigurationProperty(..),
        mkOpenSearchServerlessConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.OpenSearchServerlessFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenSearchServerlessConfigurationProperty
  = OpenSearchServerlessConfigurationProperty {collectionArn :: (Value Prelude.Text),
                                               fieldMapping :: OpenSearchServerlessFieldMappingProperty,
                                               vectorIndexName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenSearchServerlessConfigurationProperty ::
  Value Prelude.Text
  -> OpenSearchServerlessFieldMappingProperty
     -> Value Prelude.Text -> OpenSearchServerlessConfigurationProperty
mkOpenSearchServerlessConfigurationProperty
  collectionArn
  fieldMapping
  vectorIndexName
  = OpenSearchServerlessConfigurationProperty
      {collectionArn = collectionArn, fieldMapping = fieldMapping,
       vectorIndexName = vectorIndexName}
instance ToResourceProperties OpenSearchServerlessConfigurationProperty where
  toResourceProperties OpenSearchServerlessConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.OpenSearchServerlessConfiguration",
         supportsTags = Prelude.False,
         properties = ["CollectionArn" JSON..= collectionArn,
                       "FieldMapping" JSON..= fieldMapping,
                       "VectorIndexName" JSON..= vectorIndexName]}
instance JSON.ToJSON OpenSearchServerlessConfigurationProperty where
  toJSON OpenSearchServerlessConfigurationProperty {..}
    = JSON.object
        ["CollectionArn" JSON..= collectionArn,
         "FieldMapping" JSON..= fieldMapping,
         "VectorIndexName" JSON..= vectorIndexName]
instance Property "CollectionArn" OpenSearchServerlessConfigurationProperty where
  type PropertyType "CollectionArn" OpenSearchServerlessConfigurationProperty = Value Prelude.Text
  set newValue OpenSearchServerlessConfigurationProperty {..}
    = OpenSearchServerlessConfigurationProperty
        {collectionArn = newValue, ..}
instance Property "FieldMapping" OpenSearchServerlessConfigurationProperty where
  type PropertyType "FieldMapping" OpenSearchServerlessConfigurationProperty = OpenSearchServerlessFieldMappingProperty
  set newValue OpenSearchServerlessConfigurationProperty {..}
    = OpenSearchServerlessConfigurationProperty
        {fieldMapping = newValue, ..}
instance Property "VectorIndexName" OpenSearchServerlessConfigurationProperty where
  type PropertyType "VectorIndexName" OpenSearchServerlessConfigurationProperty = Value Prelude.Text
  set newValue OpenSearchServerlessConfigurationProperty {..}
    = OpenSearchServerlessConfigurationProperty
        {vectorIndexName = newValue, ..}