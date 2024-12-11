module Stratosphere.Bedrock.Prompt (
        module Exports, Prompt(..), mkPrompt
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.PromptVariantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Prompt
  = Prompt {customerEncryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
            defaultVariant :: (Prelude.Maybe (Value Prelude.Text)),
            description :: (Prelude.Maybe (Value Prelude.Text)),
            name :: (Value Prelude.Text),
            tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
            variants :: (Prelude.Maybe [PromptVariantProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrompt :: Value Prelude.Text -> Prompt
mkPrompt name
  = Prompt
      {name = name, customerEncryptionKeyArn = Prelude.Nothing,
       defaultVariant = Prelude.Nothing, description = Prelude.Nothing,
       tags = Prelude.Nothing, variants = Prelude.Nothing}
instance ToResourceProperties Prompt where
  toResourceProperties Prompt {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomerEncryptionKeyArn"
                                 Prelude.<$> customerEncryptionKeyArn,
                               (JSON..=) "DefaultVariant" Prelude.<$> defaultVariant,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Variants" Prelude.<$> variants]))}
instance JSON.ToJSON Prompt where
  toJSON Prompt {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CustomerEncryptionKeyArn"
                    Prelude.<$> customerEncryptionKeyArn,
                  (JSON..=) "DefaultVariant" Prelude.<$> defaultVariant,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Variants" Prelude.<$> variants])))
instance Property "CustomerEncryptionKeyArn" Prompt where
  type PropertyType "CustomerEncryptionKeyArn" Prompt = Value Prelude.Text
  set newValue Prompt {..}
    = Prompt {customerEncryptionKeyArn = Prelude.pure newValue, ..}
instance Property "DefaultVariant" Prompt where
  type PropertyType "DefaultVariant" Prompt = Value Prelude.Text
  set newValue Prompt {..}
    = Prompt {defaultVariant = Prelude.pure newValue, ..}
instance Property "Description" Prompt where
  type PropertyType "Description" Prompt = Value Prelude.Text
  set newValue Prompt {..}
    = Prompt {description = Prelude.pure newValue, ..}
instance Property "Name" Prompt where
  type PropertyType "Name" Prompt = Value Prelude.Text
  set newValue Prompt {..} = Prompt {name = newValue, ..}
instance Property "Tags" Prompt where
  type PropertyType "Tags" Prompt = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Prompt {..}
    = Prompt {tags = Prelude.pure newValue, ..}
instance Property "Variants" Prompt where
  type PropertyType "Variants" Prompt = [PromptVariantProperty]
  set newValue Prompt {..}
    = Prompt {variants = Prelude.pure newValue, ..}