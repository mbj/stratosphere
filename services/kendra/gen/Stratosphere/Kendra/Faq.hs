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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html>
    Faq {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-description>
         description :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-fileformat>
         fileFormat :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-indexid>
         indexId :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-languagecode>
         languageCode :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-name>
         name :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-rolearn>
         roleArn :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-s3path>
         s3Path :: S3PathProperty,
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-tags>
         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFaq ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> S3PathProperty -> Faq
mkFaq indexId name roleArn s3Path
  = Faq
      {haddock_workaround_ = (), indexId = indexId, name = name,
       roleArn = roleArn, s3Path = s3Path, description = Prelude.Nothing,
       fileFormat = Prelude.Nothing, languageCode = Prelude.Nothing,
       tags = Prelude.Nothing}
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
                               (JSON..=) "LanguageCode" Prelude.<$> languageCode,
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
                  (JSON..=) "LanguageCode" Prelude.<$> languageCode,
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
instance Property "LanguageCode" Faq where
  type PropertyType "LanguageCode" Faq = Value Prelude.Text
  set newValue Faq {..}
    = Faq {languageCode = Prelude.pure newValue, ..}
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