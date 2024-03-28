module Stratosphere.Comprehend.DocumentClassifier.DocumentClassifierDocumentsProperty (
        DocumentClassifierDocumentsProperty(..),
        mkDocumentClassifierDocumentsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentClassifierDocumentsProperty
  = DocumentClassifierDocumentsProperty {s3Uri :: (Value Prelude.Text),
                                         testS3Uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentClassifierDocumentsProperty ::
  Value Prelude.Text -> DocumentClassifierDocumentsProperty
mkDocumentClassifierDocumentsProperty s3Uri
  = DocumentClassifierDocumentsProperty
      {s3Uri = s3Uri, testS3Uri = Prelude.Nothing}
instance ToResourceProperties DocumentClassifierDocumentsProperty where
  toResourceProperties DocumentClassifierDocumentsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::DocumentClassifier.DocumentClassifierDocuments",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes [(JSON..=) "TestS3Uri" Prelude.<$> testS3Uri]))}
instance JSON.ToJSON DocumentClassifierDocumentsProperty where
  toJSON DocumentClassifierDocumentsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes [(JSON..=) "TestS3Uri" Prelude.<$> testS3Uri])))
instance Property "S3Uri" DocumentClassifierDocumentsProperty where
  type PropertyType "S3Uri" DocumentClassifierDocumentsProperty = Value Prelude.Text
  set newValue DocumentClassifierDocumentsProperty {..}
    = DocumentClassifierDocumentsProperty {s3Uri = newValue, ..}
instance Property "TestS3Uri" DocumentClassifierDocumentsProperty where
  type PropertyType "TestS3Uri" DocumentClassifierDocumentsProperty = Value Prelude.Text
  set newValue DocumentClassifierDocumentsProperty {..}
    = DocumentClassifierDocumentsProperty
        {testS3Uri = Prelude.pure newValue, ..}