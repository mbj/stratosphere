module Stratosphere.Bedrock.KnowledgeBase.OpenSearchServerlessFieldMappingProperty (
        OpenSearchServerlessFieldMappingProperty(..),
        mkOpenSearchServerlessFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenSearchServerlessFieldMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchserverlessfieldmapping.html>
    OpenSearchServerlessFieldMappingProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchserverlessfieldmapping.html#cfn-bedrock-knowledgebase-opensearchserverlessfieldmapping-metadatafield>
                                              metadataField :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchserverlessfieldmapping.html#cfn-bedrock-knowledgebase-opensearchserverlessfieldmapping-textfield>
                                              textField :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchserverlessfieldmapping.html#cfn-bedrock-knowledgebase-opensearchserverlessfieldmapping-vectorfield>
                                              vectorField :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenSearchServerlessFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> OpenSearchServerlessFieldMappingProperty
mkOpenSearchServerlessFieldMappingProperty
  metadataField
  textField
  vectorField
  = OpenSearchServerlessFieldMappingProperty
      {haddock_workaround_ = (), metadataField = metadataField,
       textField = textField, vectorField = vectorField}
instance ToResourceProperties OpenSearchServerlessFieldMappingProperty where
  toResourceProperties OpenSearchServerlessFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.OpenSearchServerlessFieldMapping",
         supportsTags = Prelude.False,
         properties = ["MetadataField" JSON..= metadataField,
                       "TextField" JSON..= textField, "VectorField" JSON..= vectorField]}
instance JSON.ToJSON OpenSearchServerlessFieldMappingProperty where
  toJSON OpenSearchServerlessFieldMappingProperty {..}
    = JSON.object
        ["MetadataField" JSON..= metadataField,
         "TextField" JSON..= textField, "VectorField" JSON..= vectorField]
instance Property "MetadataField" OpenSearchServerlessFieldMappingProperty where
  type PropertyType "MetadataField" OpenSearchServerlessFieldMappingProperty = Value Prelude.Text
  set newValue OpenSearchServerlessFieldMappingProperty {..}
    = OpenSearchServerlessFieldMappingProperty
        {metadataField = newValue, ..}
instance Property "TextField" OpenSearchServerlessFieldMappingProperty where
  type PropertyType "TextField" OpenSearchServerlessFieldMappingProperty = Value Prelude.Text
  set newValue OpenSearchServerlessFieldMappingProperty {..}
    = OpenSearchServerlessFieldMappingProperty
        {textField = newValue, ..}
instance Property "VectorField" OpenSearchServerlessFieldMappingProperty where
  type PropertyType "VectorField" OpenSearchServerlessFieldMappingProperty = Value Prelude.Text
  set newValue OpenSearchServerlessFieldMappingProperty {..}
    = OpenSearchServerlessFieldMappingProperty
        {vectorField = newValue, ..}