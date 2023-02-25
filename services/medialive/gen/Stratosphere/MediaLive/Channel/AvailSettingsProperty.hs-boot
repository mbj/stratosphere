module Stratosphere.MediaLive.Channel.AvailSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AvailSettingsProperty :: Prelude.Type
instance ToResourceProperties AvailSettingsProperty
instance JSON.ToJSON AvailSettingsProperty