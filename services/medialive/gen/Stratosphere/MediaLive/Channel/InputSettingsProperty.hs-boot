module Stratosphere.MediaLive.Channel.InputSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputSettingsProperty :: Prelude.Type
instance ToResourceProperties InputSettingsProperty
instance JSON.ToJSON InputSettingsProperty