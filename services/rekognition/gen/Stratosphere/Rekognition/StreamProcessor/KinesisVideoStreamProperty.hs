module Stratosphere.Rekognition.StreamProcessor.KinesisVideoStreamProperty (
        KinesisVideoStreamProperty(..), mkKinesisVideoStreamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisVideoStreamProperty
  = KinesisVideoStreamProperty {arn :: (Value Prelude.Text)}
mkKinesisVideoStreamProperty ::
  Value Prelude.Text -> KinesisVideoStreamProperty
mkKinesisVideoStreamProperty arn
  = KinesisVideoStreamProperty {arn = arn}
instance ToResourceProperties KinesisVideoStreamProperty where
  toResourceProperties KinesisVideoStreamProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.KinesisVideoStream",
         properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON KinesisVideoStreamProperty where
  toJSON KinesisVideoStreamProperty {..}
    = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" KinesisVideoStreamProperty where
  type PropertyType "Arn" KinesisVideoStreamProperty = Value Prelude.Text
  set newValue KinesisVideoStreamProperty {}
    = KinesisVideoStreamProperty {arn = newValue, ..}