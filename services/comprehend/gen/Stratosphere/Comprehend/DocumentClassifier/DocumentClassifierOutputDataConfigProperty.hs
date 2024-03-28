module Stratosphere.Comprehend.DocumentClassifier.DocumentClassifierOutputDataConfigProperty (
        DocumentClassifierOutputDataConfigProperty(..),
        mkDocumentClassifierOutputDataConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentClassifierOutputDataConfigProperty
  = DocumentClassifierOutputDataConfigProperty {kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                                s3Uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentClassifierOutputDataConfigProperty ::
  DocumentClassifierOutputDataConfigProperty
mkDocumentClassifierOutputDataConfigProperty
  = DocumentClassifierOutputDataConfigProperty
      {kmsKeyId = Prelude.Nothing, s3Uri = Prelude.Nothing}
instance ToResourceProperties DocumentClassifierOutputDataConfigProperty where
  toResourceProperties
    DocumentClassifierOutputDataConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::DocumentClassifier.DocumentClassifierOutputDataConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "S3Uri" Prelude.<$> s3Uri])}
instance JSON.ToJSON DocumentClassifierOutputDataConfigProperty where
  toJSON DocumentClassifierOutputDataConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "S3Uri" Prelude.<$> s3Uri]))
instance Property "KmsKeyId" DocumentClassifierOutputDataConfigProperty where
  type PropertyType "KmsKeyId" DocumentClassifierOutputDataConfigProperty = Value Prelude.Text
  set newValue DocumentClassifierOutputDataConfigProperty {..}
    = DocumentClassifierOutputDataConfigProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "S3Uri" DocumentClassifierOutputDataConfigProperty where
  type PropertyType "S3Uri" DocumentClassifierOutputDataConfigProperty = Value Prelude.Text
  set newValue DocumentClassifierOutputDataConfigProperty {..}
    = DocumentClassifierOutputDataConfigProperty
        {s3Uri = Prelude.pure newValue, ..}