module Stratosphere.Bedrock.KnowledgeBase.MongoDbAtlasFieldMappingProperty (
        MongoDbAtlasFieldMappingProperty(..),
        mkMongoDbAtlasFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MongoDbAtlasFieldMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-mongodbatlasfieldmapping.html>
    MongoDbAtlasFieldMappingProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-mongodbatlasfieldmapping.html#cfn-bedrock-knowledgebase-mongodbatlasfieldmapping-metadatafield>
                                      metadataField :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-mongodbatlasfieldmapping.html#cfn-bedrock-knowledgebase-mongodbatlasfieldmapping-textfield>
                                      textField :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-mongodbatlasfieldmapping.html#cfn-bedrock-knowledgebase-mongodbatlasfieldmapping-vectorfield>
                                      vectorField :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMongoDbAtlasFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MongoDbAtlasFieldMappingProperty
mkMongoDbAtlasFieldMappingProperty
  metadataField
  textField
  vectorField
  = MongoDbAtlasFieldMappingProperty
      {haddock_workaround_ = (), metadataField = metadataField,
       textField = textField, vectorField = vectorField}
instance ToResourceProperties MongoDbAtlasFieldMappingProperty where
  toResourceProperties MongoDbAtlasFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.MongoDbAtlasFieldMapping",
         supportsTags = Prelude.False,
         properties = ["MetadataField" JSON..= metadataField,
                       "TextField" JSON..= textField, "VectorField" JSON..= vectorField]}
instance JSON.ToJSON MongoDbAtlasFieldMappingProperty where
  toJSON MongoDbAtlasFieldMappingProperty {..}
    = JSON.object
        ["MetadataField" JSON..= metadataField,
         "TextField" JSON..= textField, "VectorField" JSON..= vectorField]
instance Property "MetadataField" MongoDbAtlasFieldMappingProperty where
  type PropertyType "MetadataField" MongoDbAtlasFieldMappingProperty = Value Prelude.Text
  set newValue MongoDbAtlasFieldMappingProperty {..}
    = MongoDbAtlasFieldMappingProperty {metadataField = newValue, ..}
instance Property "TextField" MongoDbAtlasFieldMappingProperty where
  type PropertyType "TextField" MongoDbAtlasFieldMappingProperty = Value Prelude.Text
  set newValue MongoDbAtlasFieldMappingProperty {..}
    = MongoDbAtlasFieldMappingProperty {textField = newValue, ..}
instance Property "VectorField" MongoDbAtlasFieldMappingProperty where
  type PropertyType "VectorField" MongoDbAtlasFieldMappingProperty = Value Prelude.Text
  set newValue MongoDbAtlasFieldMappingProperty {..}
    = MongoDbAtlasFieldMappingProperty {vectorField = newValue, ..}