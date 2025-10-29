module Stratosphere.KinesisAnalytics.Application.InputSchemaProperty (
        module Exports, InputSchemaProperty(..), mkInputSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalytics.Application.RecordColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalytics.Application.RecordFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputSchemaProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html>
    InputSchemaProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordcolumns>
                         recordColumns :: [RecordColumnProperty],
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordencoding>
                         recordEncoding :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordformat>
                         recordFormat :: RecordFormatProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
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
        {awsType = "AWS::KinesisAnalytics::Application.InputSchema",
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