module Stratosphere.MediaLive.Channel.NielsenCBETProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NielsenCBETProperty :: Prelude.Type
instance ToResourceProperties NielsenCBETProperty
instance JSON.ToJSON NielsenCBETProperty