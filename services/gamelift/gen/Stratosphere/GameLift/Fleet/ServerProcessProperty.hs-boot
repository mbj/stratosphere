module Stratosphere.GameLift.Fleet.ServerProcessProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ServerProcessProperty :: Prelude.Type
instance ToResourceProperties ServerProcessProperty
instance Prelude.Eq ServerProcessProperty
instance Prelude.Show ServerProcessProperty
instance JSON.ToJSON ServerProcessProperty