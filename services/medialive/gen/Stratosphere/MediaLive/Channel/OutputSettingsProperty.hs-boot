module Stratosphere.MediaLive.Channel.OutputSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutputSettingsProperty :: Prelude.Type
instance ToResourceProperties OutputSettingsProperty
instance JSON.ToJSON OutputSettingsProperty