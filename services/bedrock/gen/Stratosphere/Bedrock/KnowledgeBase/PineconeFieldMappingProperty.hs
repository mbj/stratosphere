module Stratosphere.Bedrock.KnowledgeBase.PineconeFieldMappingProperty (
        PineconeFieldMappingProperty(..), mkPineconeFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PineconeFieldMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-pineconefieldmapping.html>
    PineconeFieldMappingProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-pineconefieldmapping.html#cfn-bedrock-knowledgebase-pineconefieldmapping-metadatafield>
                                  metadataField :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-pineconefieldmapping.html#cfn-bedrock-knowledgebase-pineconefieldmapping-textfield>
                                  textField :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPineconeFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> PineconeFieldMappingProperty
mkPineconeFieldMappingProperty metadataField textField
  = PineconeFieldMappingProperty
      {haddock_workaround_ = (), metadataField = metadataField,
       textField = textField}
instance ToResourceProperties PineconeFieldMappingProperty where
  toResourceProperties PineconeFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.PineconeFieldMapping",
         supportsTags = Prelude.False,
         properties = ["MetadataField" JSON..= metadataField,
                       "TextField" JSON..= textField]}
instance JSON.ToJSON PineconeFieldMappingProperty where
  toJSON PineconeFieldMappingProperty {..}
    = JSON.object
        ["MetadataField" JSON..= metadataField,
         "TextField" JSON..= textField]
instance Property "MetadataField" PineconeFieldMappingProperty where
  type PropertyType "MetadataField" PineconeFieldMappingProperty = Value Prelude.Text
  set newValue PineconeFieldMappingProperty {..}
    = PineconeFieldMappingProperty {metadataField = newValue, ..}
instance Property "TextField" PineconeFieldMappingProperty where
  type PropertyType "TextField" PineconeFieldMappingProperty = Value Prelude.Text
  set newValue PineconeFieldMappingProperty {..}
    = PineconeFieldMappingProperty {textField = newValue, ..}