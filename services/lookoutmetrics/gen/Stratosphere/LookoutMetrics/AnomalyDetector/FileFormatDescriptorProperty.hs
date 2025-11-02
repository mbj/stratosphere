module Stratosphere.LookoutMetrics.AnomalyDetector.FileFormatDescriptorProperty (
        module Exports, FileFormatDescriptorProperty(..),
        mkFileFormatDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.CsvFormatDescriptorProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.JsonFormatDescriptorProperty as Exports
import Stratosphere.ResourceProperties
data FileFormatDescriptorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-fileformatdescriptor.html>
    FileFormatDescriptorProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-fileformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-fileformatdescriptor-csvformatdescriptor>
                                  csvFormatDescriptor :: (Prelude.Maybe CsvFormatDescriptorProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-fileformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-fileformatdescriptor-jsonformatdescriptor>
                                  jsonFormatDescriptor :: (Prelude.Maybe JsonFormatDescriptorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileFormatDescriptorProperty :: FileFormatDescriptorProperty
mkFileFormatDescriptorProperty
  = FileFormatDescriptorProperty
      {haddock_workaround_ = (), csvFormatDescriptor = Prelude.Nothing,
       jsonFormatDescriptor = Prelude.Nothing}
instance ToResourceProperties FileFormatDescriptorProperty where
  toResourceProperties FileFormatDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.FileFormatDescriptor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CsvFormatDescriptor" Prelude.<$> csvFormatDescriptor,
                            (JSON..=) "JsonFormatDescriptor"
                              Prelude.<$> jsonFormatDescriptor])}
instance JSON.ToJSON FileFormatDescriptorProperty where
  toJSON FileFormatDescriptorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CsvFormatDescriptor" Prelude.<$> csvFormatDescriptor,
               (JSON..=) "JsonFormatDescriptor"
                 Prelude.<$> jsonFormatDescriptor]))
instance Property "CsvFormatDescriptor" FileFormatDescriptorProperty where
  type PropertyType "CsvFormatDescriptor" FileFormatDescriptorProperty = CsvFormatDescriptorProperty
  set newValue FileFormatDescriptorProperty {..}
    = FileFormatDescriptorProperty
        {csvFormatDescriptor = Prelude.pure newValue, ..}
instance Property "JsonFormatDescriptor" FileFormatDescriptorProperty where
  type PropertyType "JsonFormatDescriptor" FileFormatDescriptorProperty = JsonFormatDescriptorProperty
  set newValue FileFormatDescriptorProperty {..}
    = FileFormatDescriptorProperty
        {jsonFormatDescriptor = Prelude.pure newValue, ..}