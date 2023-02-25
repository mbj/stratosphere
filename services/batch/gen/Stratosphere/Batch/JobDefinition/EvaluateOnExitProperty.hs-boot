module Stratosphere.Batch.JobDefinition.EvaluateOnExitProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EvaluateOnExitProperty :: Prelude.Type
instance ToResourceProperties EvaluateOnExitProperty
instance JSON.ToJSON EvaluateOnExitProperty