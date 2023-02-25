module Stratosphere.MediaTailor.PlaybackConfiguration.BumperProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BumperProperty :: Prelude.Type
instance ToResourceProperties BumperProperty
instance JSON.ToJSON BumperProperty