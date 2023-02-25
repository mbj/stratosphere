module Stratosphere.MediaLive.Channel.OutputGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutputGroupProperty :: Prelude.Type
instance ToResourceProperties OutputGroupProperty
instance JSON.ToJSON OutputGroupProperty