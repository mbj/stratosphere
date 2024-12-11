module Stratosphere.SageMaker.Cluster.OrchestratorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OrchestratorProperty :: Prelude.Type
instance ToResourceProperties OrchestratorProperty
instance Prelude.Eq OrchestratorProperty
instance Prelude.Show OrchestratorProperty
instance JSON.ToJSON OrchestratorProperty