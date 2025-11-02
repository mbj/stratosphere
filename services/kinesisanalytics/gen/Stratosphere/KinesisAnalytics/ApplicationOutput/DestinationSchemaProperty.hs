module Stratosphere.KinesisAnalytics.ApplicationOutput.DestinationSchemaProperty (
        DestinationSchemaProperty(..), mkDestinationSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html>
    DestinationSchemaProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html#cfn-kinesisanalytics-applicationoutput-destinationschema-recordformattype>
                               recordFormatType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationSchemaProperty :: DestinationSchemaProperty
mkDestinationSchemaProperty
  = DestinationSchemaProperty
      {haddock_workaround_ = (), recordFormatType = Prelude.Nothing}
instance ToResourceProperties DestinationSchemaProperty where
  toResourceProperties DestinationSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationOutput.DestinationSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RecordFormatType" Prelude.<$> recordFormatType])}
instance JSON.ToJSON DestinationSchemaProperty where
  toJSON DestinationSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RecordFormatType" Prelude.<$> recordFormatType]))
instance Property "RecordFormatType" DestinationSchemaProperty where
  type PropertyType "RecordFormatType" DestinationSchemaProperty = Value Prelude.Text
  set newValue DestinationSchemaProperty {..}
    = DestinationSchemaProperty
        {recordFormatType = Prelude.pure newValue, ..}