module Stratosphere.Bedrock.PromptVersion.PromptMetadataEntryProperty (
        PromptMetadataEntryProperty(..), mkPromptMetadataEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptMetadataEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptmetadataentry.html>
    PromptMetadataEntryProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptmetadataentry.html#cfn-bedrock-promptversion-promptmetadataentry-key>
                                 key :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptmetadataentry.html#cfn-bedrock-promptversion-promptmetadataentry-value>
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptMetadataEntryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> PromptMetadataEntryProperty
mkPromptMetadataEntryProperty key value
  = PromptMetadataEntryProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties PromptMetadataEntryProperty where
  toResourceProperties PromptMetadataEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.PromptMetadataEntry",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON PromptMetadataEntryProperty where
  toJSON PromptMetadataEntryProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" PromptMetadataEntryProperty where
  type PropertyType "Key" PromptMetadataEntryProperty = Value Prelude.Text
  set newValue PromptMetadataEntryProperty {..}
    = PromptMetadataEntryProperty {key = newValue, ..}
instance Property "Value" PromptMetadataEntryProperty where
  type PropertyType "Value" PromptMetadataEntryProperty = Value Prelude.Text
  set newValue PromptMetadataEntryProperty {..}
    = PromptMetadataEntryProperty {value = newValue, ..}