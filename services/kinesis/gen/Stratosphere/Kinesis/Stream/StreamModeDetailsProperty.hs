module Stratosphere.Kinesis.Stream.StreamModeDetailsProperty (
        StreamModeDetailsProperty(..), mkStreamModeDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamModeDetailsProperty
  = StreamModeDetailsProperty {streamMode :: (Value Prelude.Text)}
mkStreamModeDetailsProperty ::
  Value Prelude.Text -> StreamModeDetailsProperty
mkStreamModeDetailsProperty streamMode
  = StreamModeDetailsProperty {streamMode = streamMode}
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
  set newValue StreamModeDetailsProperty {}
    = StreamModeDetailsProperty {streamMode = newValue, ..}