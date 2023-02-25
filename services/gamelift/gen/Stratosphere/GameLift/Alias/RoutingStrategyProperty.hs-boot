module Stratosphere.GameLift.Alias.RoutingStrategyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RoutingStrategyProperty :: Prelude.Type
instance ToResourceProperties RoutingStrategyProperty
instance JSON.ToJSON RoutingStrategyProperty