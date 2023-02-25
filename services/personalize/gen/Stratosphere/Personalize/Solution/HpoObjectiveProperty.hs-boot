module Stratosphere.Personalize.Solution.HpoObjectiveProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HpoObjectiveProperty :: Prelude.Type
instance ToResourceProperties HpoObjectiveProperty
instance JSON.ToJSON HpoObjectiveProperty