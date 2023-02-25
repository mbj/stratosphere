module Stratosphere.AppMesh.Route.MatchRangeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MatchRangeProperty :: Prelude.Type
instance ToResourceProperties MatchRangeProperty
instance JSON.ToJSON MatchRangeProperty