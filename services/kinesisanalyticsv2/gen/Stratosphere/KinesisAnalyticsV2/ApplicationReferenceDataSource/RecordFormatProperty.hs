module Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.RecordFormatProperty (
        module Exports, RecordFormatProperty(..), mkRecordFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.MappingParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordformat.html>
    RecordFormatProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordformat.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordformat-mappingparameters>
                          mappingParameters :: (Prelude.Maybe MappingParametersProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordformat.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordformat-recordformattype>
                          recordFormatType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordFormatProperty ::
  Value Prelude.Text -> RecordFormatProperty
mkRecordFormatProperty recordFormatType
  = RecordFormatProperty
      {haddock_workaround_ = (), recordFormatType = recordFormatType,
       mappingParameters = Prelude.Nothing}
instance ToResourceProperties RecordFormatProperty where
  toResourceProperties RecordFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.RecordFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RecordFormatType" JSON..= recordFormatType]
                           (Prelude.catMaybes
                              [(JSON..=) "MappingParameters" Prelude.<$> mappingParameters]))}
instance JSON.ToJSON RecordFormatProperty where
  toJSON RecordFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RecordFormatType" JSON..= recordFormatType]
              (Prelude.catMaybes
                 [(JSON..=) "MappingParameters" Prelude.<$> mappingParameters])))
instance Property "MappingParameters" RecordFormatProperty where
  type PropertyType "MappingParameters" RecordFormatProperty = MappingParametersProperty
  set newValue RecordFormatProperty {..}
    = RecordFormatProperty
        {mappingParameters = Prelude.pure newValue, ..}
instance Property "RecordFormatType" RecordFormatProperty where
  type PropertyType "RecordFormatType" RecordFormatProperty = Value Prelude.Text
  set newValue RecordFormatProperty {..}
    = RecordFormatProperty {recordFormatType = newValue, ..}