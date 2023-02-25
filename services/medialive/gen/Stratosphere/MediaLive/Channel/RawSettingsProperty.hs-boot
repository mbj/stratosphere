module Stratosphere.MediaLive.Channel.RawSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RawSettingsProperty :: Prelude.Type
instance ToResourceProperties RawSettingsProperty
instance JSON.ToJSON RawSettingsProperty