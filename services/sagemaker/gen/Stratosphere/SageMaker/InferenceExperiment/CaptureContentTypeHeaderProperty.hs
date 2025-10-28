module Stratosphere.SageMaker.InferenceExperiment.CaptureContentTypeHeaderProperty (
        CaptureContentTypeHeaderProperty(..),
        mkCaptureContentTypeHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CaptureContentTypeHeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-capturecontenttypeheader.html>
    CaptureContentTypeHeaderProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-capturecontenttypeheader.html#cfn-sagemaker-inferenceexperiment-capturecontenttypeheader-csvcontenttypes>
                                      csvContentTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-capturecontenttypeheader.html#cfn-sagemaker-inferenceexperiment-capturecontenttypeheader-jsoncontenttypes>
                                      jsonContentTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCaptureContentTypeHeaderProperty ::
  CaptureContentTypeHeaderProperty
mkCaptureContentTypeHeaderProperty
  = CaptureContentTypeHeaderProperty
      {haddock_workaround_ = (), csvContentTypes = Prelude.Nothing,
       jsonContentTypes = Prelude.Nothing}
instance ToResourceProperties CaptureContentTypeHeaderProperty where
  toResourceProperties CaptureContentTypeHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment.CaptureContentTypeHeader",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CsvContentTypes" Prelude.<$> csvContentTypes,
                            (JSON..=) "JsonContentTypes" Prelude.<$> jsonContentTypes])}
instance JSON.ToJSON CaptureContentTypeHeaderProperty where
  toJSON CaptureContentTypeHeaderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CsvContentTypes" Prelude.<$> csvContentTypes,
               (JSON..=) "JsonContentTypes" Prelude.<$> jsonContentTypes]))
instance Property "CsvContentTypes" CaptureContentTypeHeaderProperty where
  type PropertyType "CsvContentTypes" CaptureContentTypeHeaderProperty = ValueList Prelude.Text
  set newValue CaptureContentTypeHeaderProperty {..}
    = CaptureContentTypeHeaderProperty
        {csvContentTypes = Prelude.pure newValue, ..}
instance Property "JsonContentTypes" CaptureContentTypeHeaderProperty where
  type PropertyType "JsonContentTypes" CaptureContentTypeHeaderProperty = ValueList Prelude.Text
  set newValue CaptureContentTypeHeaderProperty {..}
    = CaptureContentTypeHeaderProperty
        {jsonContentTypes = Prelude.pure newValue, ..}