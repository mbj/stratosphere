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
  = FileFormatDescriptorProperty {csvFormatDescriptor :: (Prelude.Maybe CsvFormatDescriptorProperty),
                                  jsonFormatDescriptor :: (Prelude.Maybe JsonFormatDescriptorProperty)}
mkFileFormatDescriptorProperty :: FileFormatDescriptorProperty
mkFileFormatDescriptorProperty
  = FileFormatDescriptorProperty
      {csvFormatDescriptor = Prelude.Nothing,
       jsonFormatDescriptor = Prelude.Nothing}
instance ToResourceProperties FileFormatDescriptorProperty where
  toResourceProperties FileFormatDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.FileFormatDescriptor",
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