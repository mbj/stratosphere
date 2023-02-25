module Stratosphere.MediaLive.Channel.TimecodeConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimecodeConfigProperty :: Prelude.Type
instance ToResourceProperties TimecodeConfigProperty
instance JSON.ToJSON TimecodeConfigProperty