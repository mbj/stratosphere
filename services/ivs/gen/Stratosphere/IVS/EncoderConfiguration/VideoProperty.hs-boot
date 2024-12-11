module Stratosphere.IVS.EncoderConfiguration.VideoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VideoProperty :: Prelude.Type
instance ToResourceProperties VideoProperty
instance Prelude.Eq VideoProperty
instance Prelude.Show VideoProperty
instance JSON.ToJSON VideoProperty