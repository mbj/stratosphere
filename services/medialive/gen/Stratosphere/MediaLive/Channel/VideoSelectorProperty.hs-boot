module Stratosphere.MediaLive.Channel.VideoSelectorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VideoSelectorProperty :: Prelude.Type
instance ToResourceProperties VideoSelectorProperty
instance Prelude.Eq VideoSelectorProperty
instance Prelude.Show VideoSelectorProperty
instance JSON.ToJSON VideoSelectorProperty