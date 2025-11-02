module Stratosphere.S3.Bucket.DataExportProperty (
        module Exports, DataExportProperty(..), mkDataExportProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.DestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataExportProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-dataexport.html>
    DataExportProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-dataexport.html#cfn-s3-bucket-dataexport-destination>
                        destination :: DestinationProperty,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-dataexport.html#cfn-s3-bucket-dataexport-outputschemaversion>
                        outputSchemaVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataExportProperty ::
  DestinationProperty -> Value Prelude.Text -> DataExportProperty
mkDataExportProperty destination outputSchemaVersion
  = DataExportProperty
      {haddock_workaround_ = (), destination = destination,
       outputSchemaVersion = outputSchemaVersion}
instance ToResourceProperties DataExportProperty where
  toResourceProperties DataExportProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.DataExport",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination,
                       "OutputSchemaVersion" JSON..= outputSchemaVersion]}
instance JSON.ToJSON DataExportProperty where
  toJSON DataExportProperty {..}
    = JSON.object
        ["Destination" JSON..= destination,
         "OutputSchemaVersion" JSON..= outputSchemaVersion]
instance Property "Destination" DataExportProperty where
  type PropertyType "Destination" DataExportProperty = DestinationProperty
  set newValue DataExportProperty {..}
    = DataExportProperty {destination = newValue, ..}
instance Property "OutputSchemaVersion" DataExportProperty where
  type PropertyType "OutputSchemaVersion" DataExportProperty = Value Prelude.Text
  set newValue DataExportProperty {..}
    = DataExportProperty {outputSchemaVersion = newValue, ..}