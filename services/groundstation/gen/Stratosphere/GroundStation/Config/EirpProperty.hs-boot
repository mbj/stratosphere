module Stratosphere.GroundStation.Config.EirpProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EirpProperty :: Prelude.Type
instance ToResourceProperties EirpProperty
instance Prelude.Eq EirpProperty
instance Prelude.Show EirpProperty
instance JSON.ToJSON EirpProperty