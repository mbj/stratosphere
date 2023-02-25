module Stratosphere.MediaLive.Channel.M2tsSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data M2tsSettingsProperty :: Prelude.Type
instance ToResourceProperties M2tsSettingsProperty
instance JSON.ToJSON M2tsSettingsProperty