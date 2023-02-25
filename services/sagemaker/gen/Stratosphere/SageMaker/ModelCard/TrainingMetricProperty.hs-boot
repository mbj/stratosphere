module Stratosphere.SageMaker.ModelCard.TrainingMetricProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TrainingMetricProperty :: Prelude.Type
instance ToResourceProperties TrainingMetricProperty
instance JSON.ToJSON TrainingMetricProperty