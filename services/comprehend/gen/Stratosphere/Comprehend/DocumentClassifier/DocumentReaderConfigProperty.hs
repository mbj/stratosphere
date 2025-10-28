module Stratosphere.Comprehend.DocumentClassifier.DocumentReaderConfigProperty (
        DocumentReaderConfigProperty(..), mkDocumentReaderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentReaderConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentreaderconfig.html>
    DocumentReaderConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentreaderconfig.html#cfn-comprehend-documentclassifier-documentreaderconfig-documentreadaction>
                                  documentReadAction :: (Value Prelude.Text),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentreaderconfig.html#cfn-comprehend-documentclassifier-documentreaderconfig-documentreadmode>
                                  documentReadMode :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-documentclassifier-documentreaderconfig.html#cfn-comprehend-documentclassifier-documentreaderconfig-featuretypes>
                                  featureTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentReaderConfigProperty ::
  Value Prelude.Text -> DocumentReaderConfigProperty
mkDocumentReaderConfigProperty documentReadAction
  = DocumentReaderConfigProperty
      {documentReadAction = documentReadAction,
       documentReadMode = Prelude.Nothing, featureTypes = Prelude.Nothing}
instance ToResourceProperties DocumentReaderConfigProperty where
  toResourceProperties DocumentReaderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::DocumentClassifier.DocumentReaderConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentReadAction" JSON..= documentReadAction]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentReadMode" Prelude.<$> documentReadMode,
                               (JSON..=) "FeatureTypes" Prelude.<$> featureTypes]))}
instance JSON.ToJSON DocumentReaderConfigProperty where
  toJSON DocumentReaderConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentReadAction" JSON..= documentReadAction]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentReadMode" Prelude.<$> documentReadMode,
                  (JSON..=) "FeatureTypes" Prelude.<$> featureTypes])))
instance Property "DocumentReadAction" DocumentReaderConfigProperty where
  type PropertyType "DocumentReadAction" DocumentReaderConfigProperty = Value Prelude.Text
  set newValue DocumentReaderConfigProperty {..}
    = DocumentReaderConfigProperty {documentReadAction = newValue, ..}
instance Property "DocumentReadMode" DocumentReaderConfigProperty where
  type PropertyType "DocumentReadMode" DocumentReaderConfigProperty = Value Prelude.Text
  set newValue DocumentReaderConfigProperty {..}
    = DocumentReaderConfigProperty
        {documentReadMode = Prelude.pure newValue, ..}
instance Property "FeatureTypes" DocumentReaderConfigProperty where
  type PropertyType "FeatureTypes" DocumentReaderConfigProperty = ValueList Prelude.Text
  set newValue DocumentReaderConfigProperty {..}
    = DocumentReaderConfigProperty
        {featureTypes = Prelude.pure newValue, ..}