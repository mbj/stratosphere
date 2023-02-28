module Stratosphere.KinesisAnalyticsV2.Application.InputSchemaProperty (
        module Exports, InputSchemaProperty(..), mkInputSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.RecordColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.RecordFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputSchemaProperty
  = InputSchemaProperty {recordColumns :: [RecordColumnProperty],
                         recordEncoding :: (Prelude.Maybe (Value Prelude.Text)),
                         recordFormat :: RecordFormatProperty}
mkInputSchemaProperty ::
  [RecordColumnProperty]
  -> RecordFormatProperty -> InputSchemaProperty
mkInputSchemaProperty recordColumns recordFormat
  = InputSchemaProperty
      {recordColumns = recordColumns, recordFormat = recordFormat,
       recordEncoding = Prelude.Nothing}
instance ToResourceProperties InputSchemaProperty where
  toResourceProperties InputSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.InputSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RecordColumns" JSON..= recordColumns,
                            "RecordFormat" JSON..= recordFormat]
                           (Prelude.catMaybes
                              [(JSON..=) "RecordEncoding" Prelude.<$> recordEncoding]))}
instance JSON.ToJSON InputSchemaProperty where
  toJSON InputSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RecordColumns" JSON..= recordColumns,
               "RecordFormat" JSON..= recordFormat]
              (Prelude.catMaybes
                 [(JSON..=) "RecordEncoding" Prelude.<$> recordEncoding])))
instance Property "RecordColumns" InputSchemaProperty where
  type PropertyType "RecordColumns" InputSchemaProperty = [RecordColumnProperty]
  set newValue InputSchemaProperty {..}
    = InputSchemaProperty {recordColumns = newValue, ..}
instance Property "RecordEncoding" InputSchemaProperty where
  type PropertyType "RecordEncoding" InputSchemaProperty = Value Prelude.Text
  set newValue InputSchemaProperty {..}
    = InputSchemaProperty {recordEncoding = Prelude.pure newValue, ..}
instance Property "RecordFormat" InputSchemaProperty where
  type PropertyType "RecordFormat" InputSchemaProperty = RecordFormatProperty
  set newValue InputSchemaProperty {..}
    = InputSchemaProperty {recordFormat = newValue, ..}