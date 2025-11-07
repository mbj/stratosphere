module Stratosphere.Bedrock.KnowledgeBase.RdsFieldMappingProperty (
        RdsFieldMappingProperty(..), mkRdsFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RdsFieldMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-rdsfieldmapping.html>
    RdsFieldMappingProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-rdsfieldmapping.html#cfn-bedrock-knowledgebase-rdsfieldmapping-custommetadatafield>
                             customMetadataField :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-rdsfieldmapping.html#cfn-bedrock-knowledgebase-rdsfieldmapping-metadatafield>
                             metadataField :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-rdsfieldmapping.html#cfn-bedrock-knowledgebase-rdsfieldmapping-primarykeyfield>
                             primaryKeyField :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-rdsfieldmapping.html#cfn-bedrock-knowledgebase-rdsfieldmapping-textfield>
                             textField :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-rdsfieldmapping.html#cfn-bedrock-knowledgebase-rdsfieldmapping-vectorfield>
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
      {haddock_workaround_ = (), metadataField = metadataField,
       primaryKeyField = primaryKeyField, textField = textField,
       vectorField = vectorField, customMetadataField = Prelude.Nothing}
instance ToResourceProperties RdsFieldMappingProperty where
  toResourceProperties RdsFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RdsFieldMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetadataField" JSON..= metadataField,
                            "PrimaryKeyField" JSON..= primaryKeyField,
                            "TextField" JSON..= textField, "VectorField" JSON..= vectorField]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomMetadataField"
                                 Prelude.<$> customMetadataField]))}
instance JSON.ToJSON RdsFieldMappingProperty where
  toJSON RdsFieldMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetadataField" JSON..= metadataField,
               "PrimaryKeyField" JSON..= primaryKeyField,
               "TextField" JSON..= textField, "VectorField" JSON..= vectorField]
              (Prelude.catMaybes
                 [(JSON..=) "CustomMetadataField"
                    Prelude.<$> customMetadataField])))
instance Property "CustomMetadataField" RdsFieldMappingProperty where
  type PropertyType "CustomMetadataField" RdsFieldMappingProperty = Value Prelude.Text
  set newValue RdsFieldMappingProperty {..}
    = RdsFieldMappingProperty
        {customMetadataField = Prelude.pure newValue, ..}
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