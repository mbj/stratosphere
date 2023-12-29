module Stratosphere.Kendra.Faq (
        module Exports, Faq(..), mkFaq
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.Faq.S3PathProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Faq
  = Faq {description :: (Prelude.Maybe (Value Prelude.Text)),
         fileFormat :: (Prelude.Maybe (Value Prelude.Text)),
         indexId :: (Value Prelude.Text),
         name :: (Value Prelude.Text),
         roleArn :: (Value Prelude.Text),
         s3Path :: S3PathProperty,
         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFaq ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> S3PathProperty -> Faq
mkFaq indexId name roleArn s3Path
  = Faq
      {indexId = indexId, name = name, roleArn = roleArn,
       s3Path = s3Path, description = Prelude.Nothing,
       fileFormat = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Faq where
  toResourceProperties Faq {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Faq", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IndexId" JSON..= indexId, "Name" JSON..= name,
                            "RoleArn" JSON..= roleArn, "S3Path" JSON..= s3Path]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FileFormat" Prelude.<$> fileFormat,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Faq where
  toJSON Faq {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IndexId" JSON..= indexId, "Name" JSON..= name,
               "RoleArn" JSON..= roleArn, "S3Path" JSON..= s3Path]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FileFormat" Prelude.<$> fileFormat,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Faq where
  type PropertyType "Description" Faq = Value Prelude.Text
  set newValue Faq {..}
    = Faq {description = Prelude.pure newValue, ..}
instance Property "FileFormat" Faq where
  type PropertyType "FileFormat" Faq = Value Prelude.Text
  set newValue Faq {..}
    = Faq {fileFormat = Prelude.pure newValue, ..}
instance Property "IndexId" Faq where
  type PropertyType "IndexId" Faq = Value Prelude.Text
  set newValue Faq {..} = Faq {indexId = newValue, ..}
instance Property "Name" Faq where
  type PropertyType "Name" Faq = Value Prelude.Text
  set newValue Faq {..} = Faq {name = newValue, ..}
instance Property "RoleArn" Faq where
  type PropertyType "RoleArn" Faq = Value Prelude.Text
  set newValue Faq {..} = Faq {roleArn = newValue, ..}
instance Property "S3Path" Faq where
  type PropertyType "S3Path" Faq = S3PathProperty
  set newValue Faq {..} = Faq {s3Path = newValue, ..}
instance Property "Tags" Faq where
  type PropertyType "Tags" Faq = [Tag]
  set newValue Faq {..} = Faq {tags = Prelude.pure newValue, ..}