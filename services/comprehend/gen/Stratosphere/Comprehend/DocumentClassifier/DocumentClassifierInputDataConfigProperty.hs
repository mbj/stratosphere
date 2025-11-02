module Stratosphere.Comprehend.DocumentClassifier.DocumentClassifierInputDataConfigProperty (
        module Exports, DocumentClassifierInputDataConfigProperty(..),
        mkDocumentClassifierInputDataConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Comprehend.DocumentClassifier.AugmentedManifestsListItemProperty as Exports
import {-# SOURCE #-} Stratosphere.Comprehend.DocumentClassifier.DocumentClassifierDocumentsProperty as Exports
import {-# SOURCE #-} Stratosphere.Comprehend.DocumentClassifier.DocumentReaderConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentClassifierInputDataConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentclassifierinputdataconfig.html>
    DocumentClassifierInputDataConfigProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentclassifierinputdataconfig.html#cfn-comprehend-documentclassifier-documentclassifierinputdataconfig-augmentedmanifests>
                                               augmentedManifests :: (Prelude.Maybe [AugmentedManifestsListItemProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentclassifierinputdataconfig.html#cfn-comprehend-documentclassifier-documentclassifierinputdataconfig-dataformat>
                                               dataFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentclassifierinputdataconfig.html#cfn-comprehend-documentclassifier-documentclassifierinputdataconfig-documentreaderconfig>
                                               documentReaderConfig :: (Prelude.Maybe DocumentReaderConfigProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentclassifierinputdataconfig.html#cfn-comprehend-documentclassifier-documentclassifierinputdataconfig-documenttype>
                                               documentType :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentclassifierinputdataconfig.html#cfn-comprehend-documentclassifier-documentclassifierinputdataconfig-documents>
                                               documents :: (Prelude.Maybe DocumentClassifierDocumentsProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentclassifierinputdataconfig.html#cfn-comprehend-documentclassifier-documentclassifierinputdataconfig-labeldelimiter>
                                               labelDelimiter :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentclassifierinputdataconfig.html#cfn-comprehend-documentclassifier-documentclassifierinputdataconfig-s3uri>
                                               s3Uri :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentclassifierinputdataconfig.html#cfn-comprehend-documentclassifier-documentclassifierinputdataconfig-tests3uri>
                                               testS3Uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentClassifierInputDataConfigProperty ::
  DocumentClassifierInputDataConfigProperty
mkDocumentClassifierInputDataConfigProperty
  = DocumentClassifierInputDataConfigProperty
      {haddock_workaround_ = (), augmentedManifests = Prelude.Nothing,
       dataFormat = Prelude.Nothing,
       documentReaderConfig = Prelude.Nothing,
       documentType = Prelude.Nothing, documents = Prelude.Nothing,
       labelDelimiter = Prelude.Nothing, s3Uri = Prelude.Nothing,
       testS3Uri = Prelude.Nothing}
instance ToResourceProperties DocumentClassifierInputDataConfigProperty where
  toResourceProperties DocumentClassifierInputDataConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::DocumentClassifier.DocumentClassifierInputDataConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AugmentedManifests" Prelude.<$> augmentedManifests,
                            (JSON..=) "DataFormat" Prelude.<$> dataFormat,
                            (JSON..=) "DocumentReaderConfig" Prelude.<$> documentReaderConfig,
                            (JSON..=) "DocumentType" Prelude.<$> documentType,
                            (JSON..=) "Documents" Prelude.<$> documents,
                            (JSON..=) "LabelDelimiter" Prelude.<$> labelDelimiter,
                            (JSON..=) "S3Uri" Prelude.<$> s3Uri,
                            (JSON..=) "TestS3Uri" Prelude.<$> testS3Uri])}
instance JSON.ToJSON DocumentClassifierInputDataConfigProperty where
  toJSON DocumentClassifierInputDataConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AugmentedManifests" Prelude.<$> augmentedManifests,
               (JSON..=) "DataFormat" Prelude.<$> dataFormat,
               (JSON..=) "DocumentReaderConfig" Prelude.<$> documentReaderConfig,
               (JSON..=) "DocumentType" Prelude.<$> documentType,
               (JSON..=) "Documents" Prelude.<$> documents,
               (JSON..=) "LabelDelimiter" Prelude.<$> labelDelimiter,
               (JSON..=) "S3Uri" Prelude.<$> s3Uri,
               (JSON..=) "TestS3Uri" Prelude.<$> testS3Uri]))
instance Property "AugmentedManifests" DocumentClassifierInputDataConfigProperty where
  type PropertyType "AugmentedManifests" DocumentClassifierInputDataConfigProperty = [AugmentedManifestsListItemProperty]
  set newValue DocumentClassifierInputDataConfigProperty {..}
    = DocumentClassifierInputDataConfigProperty
        {augmentedManifests = Prelude.pure newValue, ..}
instance Property "DataFormat" DocumentClassifierInputDataConfigProperty where
  type PropertyType "DataFormat" DocumentClassifierInputDataConfigProperty = Value Prelude.Text
  set newValue DocumentClassifierInputDataConfigProperty {..}
    = DocumentClassifierInputDataConfigProperty
        {dataFormat = Prelude.pure newValue, ..}
instance Property "DocumentReaderConfig" DocumentClassifierInputDataConfigProperty where
  type PropertyType "DocumentReaderConfig" DocumentClassifierInputDataConfigProperty = DocumentReaderConfigProperty
  set newValue DocumentClassifierInputDataConfigProperty {..}
    = DocumentClassifierInputDataConfigProperty
        {documentReaderConfig = Prelude.pure newValue, ..}
instance Property "DocumentType" DocumentClassifierInputDataConfigProperty where
  type PropertyType "DocumentType" DocumentClassifierInputDataConfigProperty = Value Prelude.Text
  set newValue DocumentClassifierInputDataConfigProperty {..}
    = DocumentClassifierInputDataConfigProperty
        {documentType = Prelude.pure newValue, ..}
instance Property "Documents" DocumentClassifierInputDataConfigProperty where
  type PropertyType "Documents" DocumentClassifierInputDataConfigProperty = DocumentClassifierDocumentsProperty
  set newValue DocumentClassifierInputDataConfigProperty {..}
    = DocumentClassifierInputDataConfigProperty
        {documents = Prelude.pure newValue, ..}
instance Property "LabelDelimiter" DocumentClassifierInputDataConfigProperty where
  type PropertyType "LabelDelimiter" DocumentClassifierInputDataConfigProperty = Value Prelude.Text
  set newValue DocumentClassifierInputDataConfigProperty {..}
    = DocumentClassifierInputDataConfigProperty
        {labelDelimiter = Prelude.pure newValue, ..}
instance Property "S3Uri" DocumentClassifierInputDataConfigProperty where
  type PropertyType "S3Uri" DocumentClassifierInputDataConfigProperty = Value Prelude.Text
  set newValue DocumentClassifierInputDataConfigProperty {..}
    = DocumentClassifierInputDataConfigProperty
        {s3Uri = Prelude.pure newValue, ..}
instance Property "TestS3Uri" DocumentClassifierInputDataConfigProperty where
  type PropertyType "TestS3Uri" DocumentClassifierInputDataConfigProperty = Value Prelude.Text
  set newValue DocumentClassifierInputDataConfigProperty {..}
    = DocumentClassifierInputDataConfigProperty
        {testS3Uri = Prelude.pure newValue, ..}