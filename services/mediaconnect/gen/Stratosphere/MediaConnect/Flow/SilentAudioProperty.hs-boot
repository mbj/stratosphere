module Stratosphere.MediaConnect.Flow.SilentAudioProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SilentAudioProperty :: Prelude.Type
instance ToResourceProperties SilentAudioProperty
instance Prelude.Eq SilentAudioProperty
instance Prelude.Show SilentAudioProperty
instance JSON.ToJSON SilentAudioProperty