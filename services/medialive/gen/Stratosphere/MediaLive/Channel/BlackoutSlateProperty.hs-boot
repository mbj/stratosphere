module Stratosphere.MediaLive.Channel.BlackoutSlateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BlackoutSlateProperty :: Prelude.Type
instance ToResourceProperties BlackoutSlateProperty
instance JSON.ToJSON BlackoutSlateProperty