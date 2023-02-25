module Stratosphere.LookoutMetrics.AnomalyDetector.JsonFormatDescriptorProperty (
        JsonFormatDescriptorProperty(..), mkJsonFormatDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonFormatDescriptorProperty
  = JsonFormatDescriptorProperty {charset :: (Prelude.Maybe (Value Prelude.Text)),
                                  fileCompression :: (Prelude.Maybe (Value Prelude.Text))}
mkJsonFormatDescriptorProperty :: JsonFormatDescriptorProperty
mkJsonFormatDescriptorProperty
  = JsonFormatDescriptorProperty
      {charset = Prelude.Nothing, fileCompression = Prelude.Nothing}
instance ToResourceProperties JsonFormatDescriptorProperty where
  toResourceProperties JsonFormatDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.JsonFormatDescriptor",
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