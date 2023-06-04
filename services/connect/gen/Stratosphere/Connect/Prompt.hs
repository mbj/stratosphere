module Stratosphere.Connect.Prompt (
        Prompt(..), mkPrompt
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Prompt
  = Prompt {description :: (Prelude.Maybe (Value Prelude.Text)),
            instanceArn :: (Value Prelude.Text),
            name :: (Value Prelude.Text),
            s3Uri :: (Prelude.Maybe (Value Prelude.Text)),
            tags :: (Prelude.Maybe [Tag])}
mkPrompt :: Value Prelude.Text -> Value Prelude.Text -> Prompt
mkPrompt instanceArn name
  = Prompt
      {instanceArn = instanceArn, name = name,
       description = Prelude.Nothing, s3Uri = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Prompt where
  toResourceProperties Prompt {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Prompt", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "S3Uri" Prelude.<$> s3Uri,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Prompt where
  toJSON Prompt {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "S3Uri" Prelude.<$> s3Uri,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Prompt where
  type PropertyType "Description" Prompt = Value Prelude.Text
  set newValue Prompt {..}
    = Prompt {description = Prelude.pure newValue, ..}
instance Property "InstanceArn" Prompt where
  type PropertyType "InstanceArn" Prompt = Value Prelude.Text
  set newValue Prompt {..} = Prompt {instanceArn = newValue, ..}
instance Property "Name" Prompt where
  type PropertyType "Name" Prompt = Value Prelude.Text
  set newValue Prompt {..} = Prompt {name = newValue, ..}
instance Property "S3Uri" Prompt where
  type PropertyType "S3Uri" Prompt = Value Prelude.Text
  set newValue Prompt {..}
    = Prompt {s3Uri = Prelude.pure newValue, ..}
instance Property "Tags" Prompt where
  type PropertyType "Tags" Prompt = [Tag]
  set newValue Prompt {..}
    = Prompt {tags = Prelude.pure newValue, ..}