module Stratosphere.MediaConnect.Flow.FrozenFramesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FrozenFramesProperty :: Prelude.Type
instance ToResourceProperties FrozenFramesProperty
instance Prelude.Eq FrozenFramesProperty
instance Prelude.Show FrozenFramesProperty
instance JSON.ToJSON FrozenFramesProperty