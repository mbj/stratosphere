module Stratosphere.MediaConnect.Flow.MediaStreamProperty (
        module Exports, MediaStreamProperty(..), mkMediaStreamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.MediaStreamAttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaStreamProperty
  = MediaStreamProperty {attributes :: (Prelude.Maybe MediaStreamAttributesProperty),
                         clockRate :: (Prelude.Maybe (Value Prelude.Integer)),
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         fmt :: (Prelude.Maybe (Value Prelude.Integer)),
                         mediaStreamId :: (Value Prelude.Integer),
                         mediaStreamName :: (Value Prelude.Text),
                         mediaStreamType :: (Value Prelude.Text),
                         videoFormat :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaStreamProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> Value Prelude.Text -> MediaStreamProperty
mkMediaStreamProperty mediaStreamId mediaStreamName mediaStreamType
  = MediaStreamProperty
      {mediaStreamId = mediaStreamId, mediaStreamName = mediaStreamName,
       mediaStreamType = mediaStreamType, attributes = Prelude.Nothing,
       clockRate = Prelude.Nothing, description = Prelude.Nothing,
       fmt = Prelude.Nothing, videoFormat = Prelude.Nothing}
instance ToResourceProperties MediaStreamProperty where
  toResourceProperties MediaStreamProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.MediaStream",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MediaStreamId" JSON..= mediaStreamId,
                            "MediaStreamName" JSON..= mediaStreamName,
                            "MediaStreamType" JSON..= mediaStreamType]
                           (Prelude.catMaybes
                              [(JSON..=) "Attributes" Prelude.<$> attributes,
                               (JSON..=) "ClockRate" Prelude.<$> clockRate,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Fmt" Prelude.<$> fmt,
                               (JSON..=) "VideoFormat" Prelude.<$> videoFormat]))}
instance JSON.ToJSON MediaStreamProperty where
  toJSON MediaStreamProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MediaStreamId" JSON..= mediaStreamId,
               "MediaStreamName" JSON..= mediaStreamName,
               "MediaStreamType" JSON..= mediaStreamType]
              (Prelude.catMaybes
                 [(JSON..=) "Attributes" Prelude.<$> attributes,
                  (JSON..=) "ClockRate" Prelude.<$> clockRate,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Fmt" Prelude.<$> fmt,
                  (JSON..=) "VideoFormat" Prelude.<$> videoFormat])))
instance Property "Attributes" MediaStreamProperty where
  type PropertyType "Attributes" MediaStreamProperty = MediaStreamAttributesProperty
  set newValue MediaStreamProperty {..}
    = MediaStreamProperty {attributes = Prelude.pure newValue, ..}
instance Property "ClockRate" MediaStreamProperty where
  type PropertyType "ClockRate" MediaStreamProperty = Value Prelude.Integer
  set newValue MediaStreamProperty {..}
    = MediaStreamProperty {clockRate = Prelude.pure newValue, ..}
instance Property "Description" MediaStreamProperty where
  type PropertyType "Description" MediaStreamProperty = Value Prelude.Text
  set newValue MediaStreamProperty {..}
    = MediaStreamProperty {description = Prelude.pure newValue, ..}
instance Property "Fmt" MediaStreamProperty where
  type PropertyType "Fmt" MediaStreamProperty = Value Prelude.Integer
  set newValue MediaStreamProperty {..}
    = MediaStreamProperty {fmt = Prelude.pure newValue, ..}
instance Property "MediaStreamId" MediaStreamProperty where
  type PropertyType "MediaStreamId" MediaStreamProperty = Value Prelude.Integer
  set newValue MediaStreamProperty {..}
    = MediaStreamProperty {mediaStreamId = newValue, ..}
instance Property "MediaStreamName" MediaStreamProperty where
  type PropertyType "MediaStreamName" MediaStreamProperty = Value Prelude.Text
  set newValue MediaStreamProperty {..}
    = MediaStreamProperty {mediaStreamName = newValue, ..}
instance Property "MediaStreamType" MediaStreamProperty where
  type PropertyType "MediaStreamType" MediaStreamProperty = Value Prelude.Text
  set newValue MediaStreamProperty {..}
    = MediaStreamProperty {mediaStreamType = newValue, ..}
instance Property "VideoFormat" MediaStreamProperty where
  type PropertyType "VideoFormat" MediaStreamProperty = Value Prelude.Text
  set newValue MediaStreamProperty {..}
    = MediaStreamProperty {videoFormat = Prelude.pure newValue, ..}