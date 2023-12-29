module Stratosphere.QuickSight.Analysis.ComputationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ComputationProperty :: Prelude.Type
instance ToResourceProperties ComputationProperty
instance Prelude.Eq ComputationProperty
instance Prelude.Show ComputationProperty
instance JSON.ToJSON ComputationProperty