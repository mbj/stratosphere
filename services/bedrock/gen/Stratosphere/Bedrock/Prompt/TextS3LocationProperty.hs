module Stratosphere.Bedrock.Prompt.TextS3LocationProperty (
        TextS3LocationProperty(..), mkTextS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextS3LocationProperty
  = TextS3LocationProperty {bucket :: (Value Prelude.Text),
                            key :: (Value Prelude.Text),
                            version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextS3LocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TextS3LocationProperty
mkTextS3LocationProperty bucket key
  = TextS3LocationProperty
      {bucket = bucket, key = key, version = Prelude.Nothing}
instance ToResourceProperties TextS3LocationProperty where
  toResourceProperties TextS3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.TextS3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "Key" JSON..= key]
                           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON TextS3LocationProperty where
  toJSON TextS3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "Key" JSON..= key]
              (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])))
instance Property "Bucket" TextS3LocationProperty where
  type PropertyType "Bucket" TextS3LocationProperty = Value Prelude.Text
  set newValue TextS3LocationProperty {..}
    = TextS3LocationProperty {bucket = newValue, ..}
instance Property "Key" TextS3LocationProperty where
  type PropertyType "Key" TextS3LocationProperty = Value Prelude.Text
  set newValue TextS3LocationProperty {..}
    = TextS3LocationProperty {key = newValue, ..}
instance Property "Version" TextS3LocationProperty where
  type PropertyType "Version" TextS3LocationProperty = Value Prelude.Text
  set newValue TextS3LocationProperty {..}
    = TextS3LocationProperty {version = Prelude.pure newValue, ..}