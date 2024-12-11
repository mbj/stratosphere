module Stratosphere.MediaLive.SignalMap.MediaResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MediaResourceProperty :: Prelude.Type
instance ToResourceProperties MediaResourceProperty
instance Prelude.Eq MediaResourceProperty
instance Prelude.Show MediaResourceProperty
instance JSON.ToJSON MediaResourceProperty