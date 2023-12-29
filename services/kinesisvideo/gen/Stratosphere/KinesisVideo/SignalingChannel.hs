module Stratosphere.KinesisVideo.SignalingChannel (
        SignalingChannel(..), mkSignalingChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SignalingChannel
  = SignalingChannel {messageTtlSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      tags :: (Prelude.Maybe [Tag]),
                      type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSignalingChannel :: SignalingChannel
mkSignalingChannel
  = SignalingChannel
      {messageTtlSeconds = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties SignalingChannel where
  toResourceProperties SignalingChannel {..}
    = ResourceProperties
        {awsType = "AWS::KinesisVideo::SignalingChannel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MessageTtlSeconds" Prelude.<$> messageTtlSeconds,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON SignalingChannel where
  toJSON SignalingChannel {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MessageTtlSeconds" Prelude.<$> messageTtlSeconds,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "MessageTtlSeconds" SignalingChannel where
  type PropertyType "MessageTtlSeconds" SignalingChannel = Value Prelude.Integer
  set newValue SignalingChannel {..}
    = SignalingChannel {messageTtlSeconds = Prelude.pure newValue, ..}
instance Property "Name" SignalingChannel where
  type PropertyType "Name" SignalingChannel = Value Prelude.Text
  set newValue SignalingChannel {..}
    = SignalingChannel {name = Prelude.pure newValue, ..}
instance Property "Tags" SignalingChannel where
  type PropertyType "Tags" SignalingChannel = [Tag]
  set newValue SignalingChannel {..}
    = SignalingChannel {tags = Prelude.pure newValue, ..}
instance Property "Type" SignalingChannel where
  type PropertyType "Type" SignalingChannel = Value Prelude.Text
  set newValue SignalingChannel {..}
    = SignalingChannel {type' = Prelude.pure newValue, ..}