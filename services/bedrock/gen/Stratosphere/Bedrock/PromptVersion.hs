module Stratosphere.Bedrock.PromptVersion (
        PromptVersion(..), mkPromptVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-promptversion.html>
    PromptVersion {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-promptversion.html#cfn-bedrock-promptversion-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-promptversion.html#cfn-bedrock-promptversion-promptarn>
                   promptArn :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-promptversion.html#cfn-bedrock-promptversion-tags>
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptVersion :: Value Prelude.Text -> PromptVersion
mkPromptVersion promptArn
  = PromptVersion
      {haddock_workaround_ = (), promptArn = promptArn,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PromptVersion where
  toResourceProperties PromptVersion {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PromptArn" JSON..= promptArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PromptVersion where
  toJSON PromptVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PromptArn" JSON..= promptArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" PromptVersion where
  type PropertyType "Description" PromptVersion = Value Prelude.Text
  set newValue PromptVersion {..}
    = PromptVersion {description = Prelude.pure newValue, ..}
instance Property "PromptArn" PromptVersion where
  type PropertyType "PromptArn" PromptVersion = Value Prelude.Text
  set newValue PromptVersion {..}
    = PromptVersion {promptArn = newValue, ..}
instance Property "Tags" PromptVersion where
  type PropertyType "Tags" PromptVersion = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PromptVersion {..}
    = PromptVersion {tags = Prelude.pure newValue, ..}