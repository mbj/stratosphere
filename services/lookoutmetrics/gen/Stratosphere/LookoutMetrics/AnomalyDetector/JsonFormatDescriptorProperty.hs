module Stratosphere.LookoutMetrics.AnomalyDetector.JsonFormatDescriptorProperty (
        JsonFormatDescriptorProperty(..), mkJsonFormatDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonFormatDescriptorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-jsonformatdescriptor.html>
    JsonFormatDescriptorProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-jsonformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-jsonformatdescriptor-charset>
                                  charset :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-jsonformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-jsonformatdescriptor-filecompression>
                                  fileCompression :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJsonFormatDescriptorProperty :: JsonFormatDescriptorProperty
mkJsonFormatDescriptorProperty
  = JsonFormatDescriptorProperty
      {haddock_workaround_ = (), charset = Prelude.Nothing,
       fileCompression = Prelude.Nothing}
instance ToResourceProperties JsonFormatDescriptorProperty where
  toResourceProperties JsonFormatDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.JsonFormatDescriptor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Charset" Prelude.<$> charset,
                            (JSON..=) "FileCompression" Prelude.<$> fileCompression])}
instance JSON.ToJSON JsonFormatDescriptorProperty where
  toJSON JsonFormatDescriptorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Charset" Prelude.<$> charset,
               (JSON..=) "FileCompression" Prelude.<$> fileCompression]))
instance Property "Charset" JsonFormatDescriptorProperty where
  type PropertyType "Charset" JsonFormatDescriptorProperty = Value Prelude.Text
  set newValue JsonFormatDescriptorProperty {..}
    = JsonFormatDescriptorProperty
        {charset = Prelude.pure newValue, ..}
instance Property "FileCompression" JsonFormatDescriptorProperty where
  type PropertyType "FileCompression" JsonFormatDescriptorProperty = Value Prelude.Text
  set newValue JsonFormatDescriptorProperty {..}
    = JsonFormatDescriptorProperty
        {fileCompression = Prelude.pure newValue, ..}