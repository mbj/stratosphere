module Stratosphere.Rekognition.StreamProcessor.KinesisVideoStreamProperty (
        KinesisVideoStreamProperty(..), mkKinesisVideoStreamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisVideoStreamProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-kinesisvideostream.html>
    KinesisVideoStreamProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-kinesisvideostream.html#cfn-rekognition-streamprocessor-kinesisvideostream-arn>
                                arn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisVideoStreamProperty ::
  Value Prelude.Text -> KinesisVideoStreamProperty
mkKinesisVideoStreamProperty arn
  = KinesisVideoStreamProperty {haddock_workaround_ = (), arn = arn}
instance ToResourceProperties KinesisVideoStreamProperty where
  toResourceProperties KinesisVideoStreamProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.KinesisVideoStream",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON KinesisVideoStreamProperty where
  toJSON KinesisVideoStreamProperty {..}
    = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" KinesisVideoStreamProperty where
  type PropertyType "Arn" KinesisVideoStreamProperty = Value Prelude.Text
  set newValue KinesisVideoStreamProperty {..}
    = KinesisVideoStreamProperty {arn = newValue, ..}