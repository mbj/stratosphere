module Stratosphere.MediaLive.Channel.AudioSelectorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AudioSelectorProperty :: Prelude.Type
instance ToResourceProperties AudioSelectorProperty
instance JSON.ToJSON AudioSelectorProperty