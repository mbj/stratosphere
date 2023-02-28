module Stratosphere.KinesisFirehose.DeliveryStream.HiveJsonSerDeProperty (
        HiveJsonSerDeProperty(..), mkHiveJsonSerDeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HiveJsonSerDeProperty
  = HiveJsonSerDeProperty {timestampFormats :: (Prelude.Maybe (ValueList Prelude.Text))}
mkHiveJsonSerDeProperty :: HiveJsonSerDeProperty
mkHiveJsonSerDeProperty
  = HiveJsonSerDeProperty {timestampFormats = Prelude.Nothing}
instance ToResourceProperties HiveJsonSerDeProperty where
  toResourceProperties HiveJsonSerDeProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.HiveJsonSerDe",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TimestampFormats" Prelude.<$> timestampFormats])}
instance JSON.ToJSON HiveJsonSerDeProperty where
  toJSON HiveJsonSerDeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TimestampFormats" Prelude.<$> timestampFormats]))
instance Property "TimestampFormats" HiveJsonSerDeProperty where
  type PropertyType "TimestampFormats" HiveJsonSerDeProperty = ValueList Prelude.Text
  set newValue HiveJsonSerDeProperty {}
    = HiveJsonSerDeProperty
        {timestampFormats = Prelude.pure newValue, ..}