module Stratosphere.MediaLive.Channel.CaptionSelectorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CaptionSelectorProperty :: Prelude.Type
instance ToResourceProperties CaptionSelectorProperty
instance JSON.ToJSON CaptionSelectorProperty