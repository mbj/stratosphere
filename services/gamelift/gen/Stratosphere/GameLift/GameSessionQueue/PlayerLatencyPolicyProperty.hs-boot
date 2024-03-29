module Stratosphere.GameLift.GameSessionQueue.PlayerLatencyPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PlayerLatencyPolicyProperty :: Prelude.Type
instance ToResourceProperties PlayerLatencyPolicyProperty
instance Prelude.Eq PlayerLatencyPolicyProperty
instance Prelude.Show PlayerLatencyPolicyProperty
instance JSON.ToJSON PlayerLatencyPolicyProperty