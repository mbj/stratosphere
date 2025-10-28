module Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.ReferenceSchemaProperty (
        module Exports, ReferenceSchemaProperty(..),
        mkReferenceSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.RecordColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.RecordFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html>
    ReferenceSchemaProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordcolumns>
                             recordColumns :: [RecordColumnProperty],
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordencoding>
                             recordEncoding :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordformat>
                             recordFormat :: RecordFormatProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceSchemaProperty ::
  [RecordColumnProperty]
  -> RecordFormatProperty -> ReferenceSchemaProperty
mkReferenceSchemaProperty recordColumns recordFormat
  = ReferenceSchemaProperty
      {haddock_workaround_ = (), recordColumns = recordColumns,
       recordFormat = recordFormat, recordEncoding = Prelude.Nothing}
instance ToResourceProperties ReferenceSchemaProperty where
  toResourceProperties ReferenceSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RecordColumns" JSON..= recordColumns,
                            "RecordFormat" JSON..= recordFormat]
                           (Prelude.catMaybes
                              [(JSON..=) "RecordEncoding" Prelude.<$> recordEncoding]))}
instance JSON.ToJSON ReferenceSchemaProperty where
  toJSON ReferenceSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RecordColumns" JSON..= recordColumns,
               "RecordFormat" JSON..= recordFormat]
              (Prelude.catMaybes
                 [(JSON..=) "RecordEncoding" Prelude.<$> recordEncoding])))
instance Property "RecordColumns" ReferenceSchemaProperty where
  type PropertyType "RecordColumns" ReferenceSchemaProperty = [RecordColumnProperty]
  set newValue ReferenceSchemaProperty {..}
    = ReferenceSchemaProperty {recordColumns = newValue, ..}
instance Property "RecordEncoding" ReferenceSchemaProperty where
  type PropertyType "RecordEncoding" ReferenceSchemaProperty = Value Prelude.Text
  set newValue ReferenceSchemaProperty {..}
    = ReferenceSchemaProperty
        {recordEncoding = Prelude.pure newValue, ..}
instance Property "RecordFormat" ReferenceSchemaProperty where
  type PropertyType "RecordFormat" ReferenceSchemaProperty = RecordFormatProperty
  set newValue ReferenceSchemaProperty {..}
    = ReferenceSchemaProperty {recordFormat = newValue, ..}