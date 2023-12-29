module Stratosphere.MediaLive.Channel.AudioTrackProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AudioTrackProperty :: Prelude.Type
instance ToResourceProperties AudioTrackProperty
instance Prelude.Eq AudioTrackProperty
instance Prelude.Show AudioTrackProperty
instance JSON.ToJSON AudioTrackProperty