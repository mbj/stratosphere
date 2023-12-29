module Stratosphere.GameLift.GameSessionQueue.DestinationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DestinationProperty :: Prelude.Type
instance ToResourceProperties DestinationProperty
instance Prelude.Eq DestinationProperty
instance Prelude.Show DestinationProperty
instance JSON.ToJSON DestinationProperty