module Stratosphere.MediaLive.Channel.EsamProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EsamProperty :: Prelude.Type
instance ToResourceProperties EsamProperty
instance Prelude.Eq EsamProperty
instance Prelude.Show EsamProperty
instance JSON.ToJSON EsamProperty