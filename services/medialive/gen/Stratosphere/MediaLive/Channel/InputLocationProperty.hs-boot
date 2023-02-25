module Stratosphere.MediaLive.Channel.InputLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputLocationProperty :: Prelude.Type
instance ToResourceProperties InputLocationProperty
instance JSON.ToJSON InputLocationProperty