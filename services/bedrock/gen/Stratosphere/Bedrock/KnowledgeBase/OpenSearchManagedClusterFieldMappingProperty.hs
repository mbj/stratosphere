module Stratosphere.Bedrock.KnowledgeBase.OpenSearchManagedClusterFieldMappingProperty (
        OpenSearchManagedClusterFieldMappingProperty(..),
        mkOpenSearchManagedClusterFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenSearchManagedClusterFieldMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchmanagedclusterfieldmapping.html>
    OpenSearchManagedClusterFieldMappingProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchmanagedclusterfieldmapping.html#cfn-bedrock-knowledgebase-opensearchmanagedclusterfieldmapping-metadatafield>
                                                  metadataField :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchmanagedclusterfieldmapping.html#cfn-bedrock-knowledgebase-opensearchmanagedclusterfieldmapping-textfield>
                                                  textField :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchmanagedclusterfieldmapping.html#cfn-bedrock-knowledgebase-opensearchmanagedclusterfieldmapping-vectorfield>
                                                  vectorField :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenSearchManagedClusterFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> OpenSearchManagedClusterFieldMappingProperty
mkOpenSearchManagedClusterFieldMappingProperty
  metadataField
  textField
  vectorField
  = OpenSearchManagedClusterFieldMappingProperty
      {haddock_workaround_ = (), metadataField = metadataField,
       textField = textField, vectorField = vectorField}
instance ToResourceProperties OpenSearchManagedClusterFieldMappingProperty where
  toResourceProperties
    OpenSearchManagedClusterFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.OpenSearchManagedClusterFieldMapping",
         supportsTags = Prelude.False,
         properties = ["MetadataField" JSON..= metadataField,
                       "TextField" JSON..= textField, "VectorField" JSON..= vectorField]}
instance JSON.ToJSON OpenSearchManagedClusterFieldMappingProperty where
  toJSON OpenSearchManagedClusterFieldMappingProperty {..}
    = JSON.object
        ["MetadataField" JSON..= metadataField,
         "TextField" JSON..= textField, "VectorField" JSON..= vectorField]
instance Property "MetadataField" OpenSearchManagedClusterFieldMappingProperty where
  type PropertyType "MetadataField" OpenSearchManagedClusterFieldMappingProperty = Value Prelude.Text
  set newValue OpenSearchManagedClusterFieldMappingProperty {..}
    = OpenSearchManagedClusterFieldMappingProperty
        {metadataField = newValue, ..}
instance Property "TextField" OpenSearchManagedClusterFieldMappingProperty where
  type PropertyType "TextField" OpenSearchManagedClusterFieldMappingProperty = Value Prelude.Text
  set newValue OpenSearchManagedClusterFieldMappingProperty {..}
    = OpenSearchManagedClusterFieldMappingProperty
        {textField = newValue, ..}
instance Property "VectorField" OpenSearchManagedClusterFieldMappingProperty where
  type PropertyType "VectorField" OpenSearchManagedClusterFieldMappingProperty = Value Prelude.Text
  set newValue OpenSearchManagedClusterFieldMappingProperty {..}
    = OpenSearchManagedClusterFieldMappingProperty
        {vectorField = newValue, ..}