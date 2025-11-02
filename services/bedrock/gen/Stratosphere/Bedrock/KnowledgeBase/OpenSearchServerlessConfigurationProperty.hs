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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchserverlessconfiguration.html>
    OpenSearchServerlessConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchserverlessconfiguration.html#cfn-bedrock-knowledgebase-opensearchserverlessconfiguration-collectionarn>
                                               collectionArn :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchserverlessconfiguration.html#cfn-bedrock-knowledgebase-opensearchserverlessconfiguration-fieldmapping>
                                               fieldMapping :: OpenSearchServerlessFieldMappingProperty,
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchserverlessconfiguration.html#cfn-bedrock-knowledgebase-opensearchserverlessconfiguration-vectorindexname>
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
      {haddock_workaround_ = (), collectionArn = collectionArn,
       fieldMapping = fieldMapping, vectorIndexName = vectorIndexName}
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