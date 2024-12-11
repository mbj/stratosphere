module Stratosphere.Bedrock.KnowledgeBase.RdsFieldMappingProperty (
        RdsFieldMappingProperty(..), mkRdsFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RdsFieldMappingProperty
  = RdsFieldMappingProperty {metadataField :: (Value Prelude.Text),
                             primaryKeyField :: (Value Prelude.Text),
                             textField :: (Value Prelude.Text),
                             vectorField :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRdsFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> RdsFieldMappingProperty
mkRdsFieldMappingProperty
  metadataField
  primaryKeyField
  textField
  vectorField
  = RdsFieldMappingProperty
      {metadataField = metadataField, primaryKeyField = primaryKeyField,
       textField = textField, vectorField = vectorField}
instance ToResourceProperties RdsFieldMappingProperty where
  toResourceProperties RdsFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RdsFieldMapping",
         supportsTags = Prelude.False,
         properties = ["MetadataField" JSON..= metadataField,
                       "PrimaryKeyField" JSON..= primaryKeyField,
                       "TextField" JSON..= textField, "VectorField" JSON..= vectorField]}
instance JSON.ToJSON RdsFieldMappingProperty where
  toJSON RdsFieldMappingProperty {..}
    = JSON.object
        ["MetadataField" JSON..= metadataField,
         "PrimaryKeyField" JSON..= primaryKeyField,
         "TextField" JSON..= textField, "VectorField" JSON..= vectorField]
instance Property "MetadataField" RdsFieldMappingProperty where
  type PropertyType "MetadataField" RdsFieldMappingProperty = Value Prelude.Text
  set newValue RdsFieldMappingProperty {..}
    = RdsFieldMappingProperty {metadataField = newValue, ..}
instance Property "PrimaryKeyField" RdsFieldMappingProperty where
  type PropertyType "PrimaryKeyField" RdsFieldMappingProperty = Value Prelude.Text
  set newValue RdsFieldMappingProperty {..}
    = RdsFieldMappingProperty {primaryKeyField = newValue, ..}
instance Property "TextField" RdsFieldMappingProperty where
  type PropertyType "TextField" RdsFieldMappingProperty = Value Prelude.Text
  set newValue RdsFieldMappingProperty {..}
    = RdsFieldMappingProperty {textField = newValue, ..}
instance Property "VectorField" RdsFieldMappingProperty where
  type PropertyType "VectorField" RdsFieldMappingProperty = Value Prelude.Text
  set newValue RdsFieldMappingProperty {..}
    = RdsFieldMappingProperty {vectorField = newValue, ..}