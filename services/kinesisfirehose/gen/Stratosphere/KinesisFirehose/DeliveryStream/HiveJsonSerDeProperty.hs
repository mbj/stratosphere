module Stratosphere.KinesisFirehose.DeliveryStream.HiveJsonSerDeProperty (
        HiveJsonSerDeProperty(..), mkHiveJsonSerDeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HiveJsonSerDeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html>
    HiveJsonSerDeProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html#cfn-kinesisfirehose-deliverystream-hivejsonserde-timestampformats>
                           timestampFormats :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHiveJsonSerDeProperty :: HiveJsonSerDeProperty
mkHiveJsonSerDeProperty
  = HiveJsonSerDeProperty
      {haddock_workaround_ = (), timestampFormats = Prelude.Nothing}
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
  set newValue HiveJsonSerDeProperty {..}
    = HiveJsonSerDeProperty
        {timestampFormats = Prelude.pure newValue, ..}