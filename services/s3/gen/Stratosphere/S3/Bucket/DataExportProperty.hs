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
  = DataExportProperty {destination :: DestinationProperty,
                        outputSchemaVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataExportProperty ::
  DestinationProperty -> Value Prelude.Text -> DataExportProperty
mkDataExportProperty destination outputSchemaVersion
  = DataExportProperty
      {destination = destination,
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