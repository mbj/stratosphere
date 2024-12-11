module Stratosphere.MediaConnect.Flow.MediaStreamProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MediaStreamProperty :: Prelude.Type
instance ToResourceProperties MediaStreamProperty
instance Prelude.Eq MediaStreamProperty
instance Prelude.Show MediaStreamProperty
instance JSON.ToJSON MediaStreamProperty