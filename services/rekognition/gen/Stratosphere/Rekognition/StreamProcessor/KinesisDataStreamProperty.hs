module Stratosphere.Rekognition.StreamProcessor.KinesisDataStreamProperty (
        KinesisDataStreamProperty(..), mkKinesisDataStreamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisDataStreamProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-kinesisdatastream.html>
    KinesisDataStreamProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-kinesisdatastream.html#cfn-rekognition-streamprocessor-kinesisdatastream-arn>
                               arn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisDataStreamProperty ::
  Value Prelude.Text -> KinesisDataStreamProperty
mkKinesisDataStreamProperty arn
  = KinesisDataStreamProperty {haddock_workaround_ = (), arn = arn}
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
  set newValue KinesisDataStreamProperty {..}
    = KinesisDataStreamProperty {arn = newValue, ..}