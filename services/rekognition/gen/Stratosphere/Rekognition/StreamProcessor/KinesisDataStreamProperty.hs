module Stratosphere.Rekognition.StreamProcessor.KinesisDataStreamProperty (
        KinesisDataStreamProperty(..), mkKinesisDataStreamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisDataStreamProperty
  = KinesisDataStreamProperty {arn :: (Value Prelude.Text)}
mkKinesisDataStreamProperty ::
  Value Prelude.Text -> KinesisDataStreamProperty
mkKinesisDataStreamProperty arn
  = KinesisDataStreamProperty {arn = arn}
instance ToResourceProperties KinesisDataStreamProperty where
  toResourceProperties KinesisDataStreamProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.KinesisDataStream",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON KinesisDataStreamProperty where
  toJSON KinesisDataStreamProperty {..}
    = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" KinesisDataStreamProperty where
  type PropertyType "Arn" KinesisDataStreamProperty = Value Prelude.Text
  set newValue KinesisDataStreamProperty {}
    = KinesisDataStreamProperty {arn = newValue, ..}