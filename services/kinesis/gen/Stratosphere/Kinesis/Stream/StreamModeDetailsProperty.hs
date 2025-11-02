module Stratosphere.Kinesis.Stream.StreamModeDetailsProperty (
        StreamModeDetailsProperty(..), mkStreamModeDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamModeDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streammodedetails.html>
    StreamModeDetailsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streammodedetails.html#cfn-kinesis-stream-streammodedetails-streammode>
                               streamMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamModeDetailsProperty ::
  Value Prelude.Text -> StreamModeDetailsProperty
mkStreamModeDetailsProperty streamMode
  = StreamModeDetailsProperty
      {haddock_workaround_ = (), streamMode = streamMode}
instance ToResourceProperties StreamModeDetailsProperty where
  toResourceProperties StreamModeDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kinesis::Stream.StreamModeDetails",
         supportsTags = Prelude.False,
         properties = ["StreamMode" JSON..= streamMode]}
instance JSON.ToJSON StreamModeDetailsProperty where
  toJSON StreamModeDetailsProperty {..}
    = JSON.object ["StreamMode" JSON..= streamMode]
instance Property "StreamMode" StreamModeDetailsProperty where
  type PropertyType "StreamMode" StreamModeDetailsProperty = Value Prelude.Text
  set newValue StreamModeDetailsProperty {..}
    = StreamModeDetailsProperty {streamMode = newValue, ..}