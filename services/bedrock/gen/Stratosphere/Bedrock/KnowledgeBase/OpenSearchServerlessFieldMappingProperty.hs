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
  = OpenSearchServerlessFieldMappingProperty {metadataField :: (Value Prelude.Text),
                                              textField :: (Value Prelude.Text),
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
      {metadataField = metadataField, textField = textField,
       vectorField = vectorField}
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