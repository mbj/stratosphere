module Stratosphere.MediaLive.Input.InputSourceRequestProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputSourceRequestProperty :: Prelude.Type
instance ToResourceProperties InputSourceRequestProperty
instance JSON.ToJSON InputSourceRequestProperty